from django import forms
from django.forms.widgets import DateTimeInput
from qubalapp.models import Person, Task_Deliverable
from datetimewidget.widgets import DateTimeWidget
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Div, Submit, HTML, Button, Row, Field, Fieldset, ButtonHolder
from crispy_forms.bootstrap import AppendedText, PrependedText, FormActions, Accordion, AccordionGroup, Tab, FormActions
import datetime


class MessageForm(forms.Form):
    text_input = forms.CharField()
 
    textarea = forms.CharField(
        widget = forms.Textarea(),
    )
 
    radio_buttons = forms.ChoiceField(
        choices = (
            ('option_one', "Option one is this and that be sure to include why it's great"), 
            ('option_two', "Option two can is something else and selecting it will deselect option one")
        ),
        widget = forms.RadioSelect,
        initial = 'option_two',
    )
 
    checkboxes = forms.MultipleChoiceField(
        choices = (
            ('option_one', "Option one is this and that be sure to include why it's great"), 
            ('option_two', 'Option two can also be checked and included in form results'),
            ('option_three', 'Option three can yes, you guessed it also be checked and included in form results')
        ),
        initial = 'option_one',
        widget = forms.CheckboxSelectMultiple,
        help_text = "<strong>Note:</strong> Labels surround all the options for much larger click areas and a more usable form.",
    )
 
    appended_text = forms.CharField(
        help_text = "Here's more help text"
    )
 
    prepended_text = forms.CharField()
 
    prepended_text_two = forms.CharField()
 
    multicolon_select = forms.MultipleChoiceField(
        choices = (('1', '1'), ('2', '2'), ('3', '3'), ('4', '4'), ('5', '5')),
    )
 
    # Uni-form
    helper = FormHelper()
    helper.form_class = 'form-horizontal'
    helper.layout = Layout(
        Field('text_input', css_class='input-xlarge'),
        Field('textarea', rows="3", css_class='input-xlarge'),
        'radio_buttons',
        Field('checkboxes', style="background: #FAFAFA; padding: 10px;"),
        AppendedText('appended_text', '.00'),
        PrependedText('prepended_text', '<input type="checkbox" checked="checked" value="" id="" name="">', active=True),
        PrependedText('prepended_text_two', '@'),
        'multicolon_select',
        FormActions(
            Submit('save_changes', 'Save changes', css_class="btn-primary"),
            Submit('cancel', 'Cancel'),
        ),
        Accordion(
            AccordionGroup('First Group',
                'radio_buttons'
            ),
            AccordionGroup('Second Group',
                Field('checkboxes', css_class="extra")
            )
        )
    )




class FileField(Field):
    template = 'qubalapp/file_field.html'

 #Cosas a preguntar:

    # user (por defecto lo pillamos del request en la view que procesa este form (que es def register_character))
    # Name 
    # Lastname
    # image
    # Birthdate
    # email
    # School *** will be created later
    # Address *** really neccesary? i guess so....
    # -- street
    # -- number
    # -- floor
    # -- door
    # -- City
    # -- postcode
    # -- Country
    # twitter
    # facebook
    # dropbox



class Register_Character_Landing_Form(forms.Form):

    class Meta:
        model = Person
        
    

    student_name = forms.CharField(
        label = "Name",
        max_length = 120,
        required = True,
    )

    student_lastname = forms.CharField(
        label = "Surname",
        max_length = 120,
        required = True,
    )

    student_image = forms.FileField(label='Profile Image')


    student_birthdate = forms.DateTimeField(initial=datetime.datetime.now)

    student_phone = forms.CharField(
        label = "Phone",
        max_length = 13,
        required = True,
    )


    
    #Here you define the Layout of the fields you have declared before
    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.form_class = 'form-inline' # the css class applied to the form apart from the .uniform
        self.helper.form_action = '/test/register_character/'
        # Layout field definition (order is important)
        self.helper.layout = Layout(
            Fieldset(
                'Please complete the information for your character in Qubal!',
                'student_name',
                'student_lastname',
                'student_birthdate',
            ),
            #DateTimeWidget('student_birthdate'),
            AppendedText('student_phone', '<i class="icon-phone"></i>'),    
            FileField('student_image'),
            
            #Field('student_phone'),
            # Fieldset(
            #     'social links', #remember the first one is the header (label)         
            #     'student_twitter',
            #     'student_facebook',
            #     'student_dropbox',
            # ),
            #HTML
            FormActions(
                Submit('save', 'Invoke your Character!'),
                Button('cancel', 'Cancel')
            )
        )
        super(Register_Character_Landing_Form, self).__init__(*args, **kwargs)
        dateTimeOptions = {
        #'format': 'dd/mm/yyyy HH:ii',
        #'format' : 'yyyy-mm-dd HH:MM',
        'autoclose': 'true',
        'startView': '4',
        'weekStart':'1',
        #'startDate':'01/01/1990',
        }
        self.fields['student_birthdate'].widget = DateTimeWidget(options = dateTimeOptions)


class FileField(Field):
    template = 'qubalapp/deliverable_field.html'


class Deliverable_Form(forms.Form):
    """
        Creamos un formulario especial para enviar los deliverables del estudiante que 
        manda a la view de task_completed, la cual comprueba y registra la task completada 
    """
    class Meta:
        model = Task_Deliverable

    deliverable_button = forms.FileField(label='')

    def __init__(self, *args, **kwargs):

        super(Deliverable_Form, self).__init__(*args, **kwargs)

        self.helper = FormHelper()
        self.helper.form_class = 'form-inline'
        self.helper.form_action = '/test/task_completed/'
        self.helper.layout = Layout(
            FileField('deliverable_button'),

            HTML('<input type="hidden" name="task_sent" value="{{ task.id }}" />'),

            FormActions(
                Submit('save', 'Send your files!'),
            )
        )


class ExampleForm(forms.Form):
        
    like_website = forms.TypedChoiceField(
        label = "Do you like this website?",
        choices = ((1, "Yes"), (0, "No")),
        coerce = lambda x: bool(int(x)),
        widget = forms.RadioSelect,
        initial = '1',
        required = True,
    )

    favorite_food = forms.CharField(
        label = "What is your favorite food?",
        max_length = 80,
        required = True,
    )

    favorite_color = forms.CharField(
        label = "What is your favorite color?",
        max_length = 80,
        required = True,
    )

    favorite_number = forms.IntegerField(
        label = "Favorite number",
        required = False,
    )

    notes = forms.CharField(
        label = "Additional notes or feedback",
        required = False,
    )


    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.layout = Layout(
            Fieldset(
                'Please complete your data for making Qubal able to summon your character',
                'like_website',
                'favorite_number',
                'favorite_color',
                'favorite_food',
                'notes'
            ),
            ButtonHolder(
                Submit('submit', 'Submit', css_class='button white')
            )
        )
        super(ExampleForm, self).__init__(*args, **kwargs)


class Oracle_Form(forms.Form):

    character_class_choice = forms.ChoiceField(
        label = 'Choose your path through a Qubal Character Class',
        choices = (('competitor','Competitor'),('explorer','Explorer'),('inventor','Inventor'),('collaborator','Collaborator')),
        widget = forms.RadioSelect,
        required = True,
    )

    radio_buttons = forms.ChoiceField(
        choices = (
            ('option_one', "Option one is this and that be sure to include why it's great"), 
            ('option_two', "Option two can is something else and selecting it will deselect option one")
        ),
        widget = forms.RadioSelect,
        initial = 'option_two',
    )


    def __init__(self, *args, **kwargs):

        super(Oracle_Form, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.form_action = '/test/oracle_process/'
        self.helper.layout = Layout(
            Fieldset(
                'The ORACLE',
                'character_class_choice',
            ),
            ButtonHolder(
                Submit('submit', 'Submit', css_class='button info')
            )
        )


   























    # 