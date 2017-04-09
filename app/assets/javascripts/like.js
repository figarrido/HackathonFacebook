$(function(){
    $('.button.button1').click(function (e) {

        //$.post('new_like', {game_id: this.id})
         console.log("se esta imprimiendo");
        // identifier = this.id
        //
        $.ajax({
          type: "POST",
          url: "new_like",
          data: {game_id: this.id}
        })
        //
        // $.ajax({
        //     type: "PUT",
        //     url: "new_like"
        //     data: $.params({game_id: identifier})
        // });
    })
})
