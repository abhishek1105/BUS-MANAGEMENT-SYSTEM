
           
            $(document).ready(function(){
        $("#option1").mouseenter(function(){
         $("#dashboard").css("width","105%").css("border-right","5px solid black");
       
          });
          $("#option1").mouseleave(function(){
         $("#dashboard").css("width","100%").css("border-right","none");
       
          });
          });
        $(document).ready(function(){
        $("#option2").mouseenter(function(){
         $("#student").css("width","105%").css("border-right","5px solid black");
       
          });
          $("#option2").mouseleave(function(){
         $("#student").css("width","100%").css("border-right","none");
       
          });
          });
          $(document).ready(function(){
        $("#option3").mouseenter(function(){
         $("#faculty").css("width","105%").css("border-right","5px solid black");
       
          });
          $("#option3").mouseleave(function(){
         $("#faculty").css("width","100%").css("border-right","none");
       
          });
          });
//          $(document).ready(function(){
//        $("#option4").mouseenter(function(){
//         $("#admin").css("width","105%").css("border-right","5px solid black");
//       
//          });
//          $("#option4").mouseleave(function(){
//         $("#admin").css("width","100%").css("border-right","none");
//       
//          });
//          });
          $(document).ready(function(){
        $("#option5").mouseenter(function(){
         $("#fees").css("width","105%").css("border-right","5px solid black");
       
          });
          $("#option5").mouseleave(function(){
         $("#fees").css("width","100%").css("border-right","none");
       
          });
          });
          
          $(document).ready(function(){
        $("#option6").mouseenter(function(){
         $("#routes").css("width","105%").css("border-right","5px solid black");
       
          });
          $("#option6").mouseleave(function(){
         $("#routes").css("width","100%").css("border-right","none");
       
          });
          });
          
           
       
             
       
       
        $(document).ready(function(){
        $("#dashboard").click(function(){
          $("#option1").show();
          $("#option5").hide();
           $("#option4").hide();
            $("#option3").hide();
             $("#option2").hide();
              $("#option6").hide();
       
       
          });
          });
           $(document).ready(function(){
        $("#student").click(function(){
          $("#option2").show();
           $("#option5").hide();
           $("#option4").hide();
            $("#option3").hide();
             $("#option6").hide();
              $("#option1").hide();
       
       
          });
          });
          $(document).ready(function(){
        $("#faculty").click(function(){
          $("#option3").show();
            
             $("#option5").hide();
           $("#option4").hide();
            $("#option6").hide();
             $("#option2").hide();
              $("#option1").hide();
       
       
          });
          });
//          $(document).ready(function(){
//        $("#admin").click(function(){
//          $("#option4").show();
//            
//           $("#option5").hide();
//           $("#option6").hide();
//            $("#option3").hide();
//             $("#option2").hide();
//              $("#option1").hide();
//       
//       
//          });
//          });
          $(document).ready(function(){
        $("#fees").click(function(){
          $("#option5").show();
            $("#option6").hide();
           $("#option4").hide();
            $("#option3").hide();
             $("#option2").hide();
              $("#option1").hide();
       
       
          });
          });
          $(document).ready(function(){
        $("#routes").click(function(){
          $("#option6").show();
           $("#option5").hide();
           $("#option4").hide();
            $("#option3").hide();
             $("#option2").hide();
              $("#option1").hide();
       
          });
          });
          
      