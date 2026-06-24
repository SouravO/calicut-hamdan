function getwhatsapp()
          {
              alert("hii");
              var name=document.getElementbyId("name");
              alert(name);
              var phone=document.getElementbyId("phone");
              alert(phone);
              var msg=document.getElementbyId("message");
              alert(msg);
              
              var url="https://api.whatsapp.com/send/?phone=919495623677?text="
            +"Name: "+name+"%0a"
            +"Phone:"+phone+"%0a"
            +"Message: "+msg;
            window.open(url, '_blank').focus();
          }