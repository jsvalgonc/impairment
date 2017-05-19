# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
    $('.combo_user_id').on 'change', -> 
        alert("id=" + this.id)
        alert("aparty_id=" + this.getAttribute("aparty_id"))
        $.ajax 'gestao_pool_update',
            type: "POST"
            data: 
                js_aparty_id:this.getAttribute("aparty_id")
                js_aparty_selected:this.childNodes[1].value
                
     $('.tablinks').on 'click', ->
        tabcontent = document.getElementsByClassName("tabcontent")
        for i in [0..(tabcontent.length-1)]
            tabcontent[i].style.display = 'none'
        tablinks = document.getElementsByClassName("tablinks");
        for i in [0..(tabcontent.length-1)]
            tablinks[i].className = tablinks[i].className.replace(" active", "")
        document.getElementById(this.getAttribute("pasta")).style.display = "block"
