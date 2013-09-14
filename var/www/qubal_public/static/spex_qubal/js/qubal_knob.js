    function knob_mastery(){
    $('.dial1').val(0).trigger('change').delay(1000);
    $(".dial1").knob({
        // 'min':0,
        // 'max':100,
        // 'readOnly': true,
        'width': 150,
        'height': 150,
        // 'fgColor': '#b9e672',
        // 'step': 1,
        // 'dynamicDraw': true,
        // //'displayInput': false,
        'thickness': 0.20,
        // //'tickColorizeValues': true,
        // 'lineCap': 'round',
        // //'cursor': true
    'min':0,
    'max':100,
    'fgColor': '#d3004d',
    'inputColor':'#d3004d',
    'step':1,
    'readOnly': true,
    'lineCap': 'round',
    'skin': 'tron',
    })         
    
        var tmr = self.setInterval(function(){myDelay()},40);        
        var m = 0;
        function myDelay(){
            m += 1;
            $('.dial1').val(m).trigger('change');
            if(m==85) {            
                window.clearInterval(tmr);
            }
        }    
    };