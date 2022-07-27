<!DOCTYPE html>
<html>
<head>
  <title>Seating Arrangement</title>
  <link rel="stylesheet" type="text/css" href="../css/main-dashboard.css">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="../css/admin_dashboard.css">   
  <link rel="icon" type="image/png" href="logo.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style type="text/css">
   .catagory1-page,.catagory2-page,.catagory3-page{
    display: none;
  }
</style>

</head>
<body class="body">
  <div class="mobile-view">
    <div class="row">
      <div class="col-md-6 col-6 logo1">
        <img src="logo.png">
      </div>
      <div class="col-md-6 col-6">
        <div class="mobile-menu">
          <div id="mySidepanel" class="sidepanel">
            <div class="m_menu">
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><i class="far fa-times-circle"></i></a>  
              <div class="top-nav-wrapper">
                <div class="top-nav">                       
                  <div class="co_profile">
                    <div class="profile-img">

                    </div>
                    <div class="user-details">
                      <span id="more-details">Seating Arrangement</span>
                    </div>
                  </div>
                  
                <div class="nav-slider"></div>
                <div class="hosting dash">
                  <div class="hosting-btn nav-btn">Faculty</div>
                </div>
                <div class="hosting dash">
                  <div class="hosting1-btn nav-btn">Department</div>
                </div>
                <div class="domains dash">
                  <div class="domain1-btn nav-btn">Course</div>
                </div>
                <div class="dryfruit dash">
                  <div class="dryfruit1-btn nav-btn">Subject</div>
                </div>
                <div class="category dash">
                  <div class="category1-btn nav-btn">Students</div>
                </div>
                
                <div class="dryfruit dash">
                  <div class="dryfruit-btn nav-btn">Block</div>
                </div>
                
                <div class="domains dash">
                  <div class="domain-btn nav-btn">Exam</div>
                </div>
                
                <div class="marketplace dash">
                            <div class="marketplace-btn nav-btn">Logout</div>
                          </div>
               
                <div class="nav-slider"></div>
              </div> 
            </div> 
          </div>
        </div>
        <button class="openbtn" onclick="openNav()"><i class="far fa-bars"></i></button> 
      </div>
    </div>
  </div> 
</div>
<div class="row">
  <div class="col-xl-2 col-lg-3 col-md-6">
    <div class="two">
      <div class="top-nav-wrapper">
        <div class="top-nav">
          <div class="logo">
            <img src="logo.png">
          </div>
          <div class="co_profile">
            <div class="profile-img">

            </div>
            <div class="user-details">
              <span id="more-details">Seating Arrangement</span>
            </div>
          </div>
          
        <div class="nav-slider"></div>
                        <!-- <div class="dashboard dash">
                            <button class="active dashboard-btn nav-btn">Details List</button>
                          </div> -->
                          <div class="hosting dash">
                            <div class="hosting-btn nav-btn">Faculty</div>
                          </div>
                          <div class="hosting dash">
                            <div class="hosting1-btn nav-btn">Department</div>
                          </div>
                          <div class="domains dash">
                            <div class="domain1-btn nav-btn">Course</div>
                          </div>
                          <div class="dryfruit dash">
                            <div class="dryfruit1-btn nav-btn">Subject</div>
                          </div>
                          <div class="category dash">
                            <div class="category1-btn nav-btn">Student</div>
                          </div>
                          
                        <div class="dryfruit dash">
                            <div class="dryfruit-btn nav-btn">Block</div>
                          </div>
                          
                          <div class="domains dash">
                            <div class="domain-btn nav-btn">Exam</div>
                          </div>
                          
                          <div class="marketplace dash">
                            <div class="marketplace-btn nav-btn">Logout</div>
                          </div>
                        
                          <div class="nav-slider"></div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-xl-10 col-lg-9 col-md-12">
                  
                   <!--  <div  id="hideDiv" class="alert alert-success alert-block" >
                          <input type="text" class="close" data-dismiss="alert"></input>
                      <strong style="padding-top : 5px !important; display: inline-block;">{{ session()->get('message') }}</strong>
                    </div> -->
                  

                    <!-- admindetail list --> 
                    <div class="page mt-4 marketplace-page title1">
                      <div class="mt-5">
                        <h4 class="mb-4"> Admin Details List</h4>
                        <div class="detail">
                         <table class="table table-bordered table-striped">
                          <thead>
                            <tr>
                              <th>Email</th>
                              <th>Phone no</th>
                              <th>Address</th>
                              <th>Update</th>

                            </tr>
                          </thead>

                          <tbody>
                            
                            <tr>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td><button class="btn0 btn2"><a href="" >Update</a></button></td>

                            </tr>
                            
                          </tbody>

                        </table>
                      </div>
                    </div>
                  </div>

                  <!-- Catagory list --> 
                  <div class="page mt-4 hosting-page title1">
                    <div class="mt-5">
                     <div class="list1">
                       <h4 class="mb-4">Catagory List</h4>
                       <button class="btn1"><a href="" style="color:white">ADD</a></button>
                     </div>
                     <div class="detail">
                      <table class="table table-bordered table-striped">
                        <thead>
                          <tr>
                            <th>Catagory</th>
                            <th>Delete</th>
                          </tr>
                        </thead>

                        <tbody>
                          
                          <tr>
                            <td></td>
                            <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                          </tr>
                          
                        </tbody>


                      </table>
                    </div>
                  </div>
                </div> 

                <!-- Product list --> 
                <div class="page mt-4 hosting1-page title1">
                  <div class="mt-5">
                   <div class="list1">
                     <h4 class="mb-4">Product List</h4>
                     <button class="btn1"><a href="" style="color:white">ADD</a></button>
                   </div>
                   <div class="detail">
                    <table class="table table-bordered table-striped">
                      <thead>
                        <tr>
                          <th>Image</th>
                          <th>Name</th>
                          <th>Price</th>
                          <th>Description</th>
                          <th>Catagory</th>
                          <th>Update</th>
                          <th>Delete</th>
                        </tr>
                      </thead>

                      <tbody>
                        
                        <tr>
                          <td><img src="" height="100px" width="100px"></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td><button class="btn0 btn2"><a href="" >Update</a></button></td>
                          <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                        </tr>
                       
                      </tbody>


                    </table>
                  </div>
                </div>
              </div> 

              <!-- contact list --> 
              <div class="page mt-4 domain-page title1">
                <div class="mt-5">
                  <h4 class="mb-4">Contact List</h4>
                  <div class="detail">
                    <table class="table table-bordered table-striped">
                      <thead>
                        <tr>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Email</th>
                          <th>Message</th>

                          <th>Delete</th>
                        </tr>
                      </thead>

                      <tbody>
                        
                        <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>

                          <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                        </tr>
                        
                      </tbody>


                    </table>
                  </div>
                </div> 
              </div>

              <!-- Best catagory list --> 
              <div class="page mt-4 domain1-page title1">
                <div class="mt-5">
                  <div class="list1">
                    <h4 class="mb-4">BEST CATAGORY</h4>
                    <button class="btn1"><a href="" style="color:white">ADD</a></button>
                  </div>
                  <div class="detail">
                    <table class="table table-bordered table-striped">
                      <thead>
                        <tr>
                          <th>Name</th>
                          
                          <th>Delete</th>
                        </tr>
                      </thead>

                      <tbody>
                       
                        <tr>
                          <td></td>

                          <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                        </tr>
                      
                      </tbody>


                    </table>
                  </div>
                </div> 
              </div>
              <!-- Gallary-->    
              <div class="page mt-4 manage-account-page title1">
                <div class="mt-5">
                 <div class="list1">
                   <h4 class="mb-4">Gallery View</h4>

                   <button class="btn1"><a href="" style="color:white">ADD</a></button><br/>
                   
                 </div>


                 <div class="detail" style="display:flex; flex-wrap:wrap ;" > 


                   <div>

                     
                     <div class="gallery">

                      <img src="" alt="Cinque Terre" width="200" height="200">

                      <div class="desc"><a href=""><button>Delete Image</button></a>
                      </div>
                    </div> 
                    

                  </div>  

                </div>


              </div>
            </div> 

            <!-- our team -->
            <div class="page mt-4 message-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">Our Team</h4>
                  <button class="btn1"><a href=""style="color:white">ADD</a></button>
                </div>

                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Facebook link</th>
                        <th>Twitter link</th>
                        <th>Instagram link</th>
                        <th>LinkedIn link</th>
                        <th>Update</th>
                        <th>Delete</th>
                      </tr>
                    </thead>

                    <tbody>
                      
                      <tr>
                        <td><img src="" height="100px" width="100px"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><button class="btn0 btn2"><a href="
                          ">Update</a></button></td>
                        <td><button class="btn3 btn0"><a href="
                          ">Delete</a></button></td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
            </div> 

            <!-- Latest blog list -->
           <!--  <div class="page mt-4 dryfruit2-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">LATEST BLOG</h4>
                  <button class="btn1"><a href="{{url('admin/blog')}}"style="color:white">ADD</a></button>
                </div>
                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Image</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Month</th>
                        <th>Year</th>
                        <th>Update</th>
                        <th>Delete</th>
                      </tr>
                    </thead>

                    <tbody>
                      @foreach($blogdata as $b)
                      <tr>
                        <td><img src="/uploads/{{$b->image}}" height="100px" width="100px"></td>
                        <td>{{$b->title}}</td>
                        <td>{{$b->description}}</td>
                        <td>{{$b->date}}</td>
                        <td>{{$b->month}}</td>    
                        <td>{{$b->year}}</td>
                        <td><button class="btn0 btn2"><a href="{{url('admin/updateblog')}}/{{$b->id}}" >Update</a></button></td>
                        <td><button class="btn3 btn0"><a href="{{url('admin/delblog')}}/{{$b->id}}">Delete</a></button></td>
                      </tr>
                      @endforeach  
                    </tbody>

                  </table>
                </div>
              </div>
            </div>
 -->
            <!--  service list -->
            <div class="page mt-4 dryfruit-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">Services</h4>
                  <button class="btn1"><a href=""style="color:white">ADD</a></button>
                </div>
                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Icon url</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Color Class</th>
                        <th>Update</th>
                        <th>Delete</th>
                      </tr>
                    </thead>

                    <tbody>
                      
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>    
                        <td></td>
                        <td><button class="btn0 btn2"><a href="" >Update</a></button></td>
                        <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                      </tr>
                      
                    </tbody>

                  </table>
                </div>
              </div>
            </div> 
            
            <!-- Best Product list -->
            <div class="page mt-4 dryfruit1-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">BEST PRODUCTS</h4>
                  <button class="btn1"><a href=""style="color:white">ADD</a></button>
                </div>
                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Catagory</th>
                        <th>Update</th>
                        <th>Delete</th>
                      </tr>
                    </thead>

                    <tbody>
                     
                      <tr>
                        <td><img src="" height="100px" width="100px"></td>
                        <td></td>
                        <td></td>
                        <td></td>    
                        <td><button class="btn0 btn2"><a href="" >Update</a></button></td>
                        <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                      </tr>
                        
                    </tbody>

                  </table>
                </div>
              </div>
            </div> 

            <!-- Cake list -->
            <div class="page mt-4 catagory1-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">CAKE</h4>
                  <button class="btn1"><a href=""style="color:white">ADD</a></button>
                </div>
                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Description</th>
                        <th>Update</th>
                        <th>Delete</th>
                      </tr>
                    </thead>

                    <tbody>
                     
                      <tr>
                        <td><img src="" height="100px" width="100px"></td>
                        <td></td>
                        <td></td>
                        <td></td>    
                        <td><button class="btn0 btn2"><a href="" >Update</a></button></td>
                        <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                      </tr>
                        
                    </tbody>

                  </table>
                </div>
              </div>
            </div>

            <!-- schedule list -->
            <div class="page mt-4 catagory2-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">SCHEDULE</h4>
                </div>
                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Open Days</th>
                        <th>Open Time</th>
                        <th>Breakfast</th>
                        <th>Lunch</th>
                        <th>Dinner</th>
                        <th>Update</th>
                      </tr>
                    </thead>

                    <tbody>
                      
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>    
                        <td><button class="btn0 btn2"><a href="" >Update</a></button></td>
                      </tr>
                      
                    </tbody>

                  </table>
                </div>
              </div>
            </div> 

            <!-- Link list -->
            <div class="page mt-4 catagory3-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">ALL LINKS</h4>
                </div>
                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Facebook</th>
                        <th>Instagram</th>
                        <th>Twitter</th>
                        <th>Linked list</th>
                        <th>Printerest</th>
                        <th>Whatsapp</th>
                        <th>Update</th>
                      </tr>
                    </thead>

                    <tbody>
                      
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>    
                        <td><button class="btn0 btn2"><a href="" >Update</a></button></td>
                      </tr>  
                    </tbody>

                  </table>
                </div>
              </div>
            </div>

            <!--   testimonial list -->
            <div class="page mt-4 category-page title1">
              <div class="mt-5">
                <div class="list1">
                  <h4 class="mb-4">Testimonials List</h4>
                  <button class="btn1"><a href="" >ADD</a></button>
                </div>
                <div class="detail">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Update</th>
                        <th>Delete</th>

                      </tr>
                    </thead>

                    <tbody>
                      
                      <tr>
                       <td><img src="" height="100px" width="100px"></td>
                       <td></td> 
                       <td></td>
                       <td><button class="btn0 btn2"><a href="">Update</a></button></td>


                       <td><button class="btn3 btn0"><a href="">Delete</a></button></td>
                     </tr>
                     
                   </tbody>
                 </table>
               </div>  
             </div>

           </div>        
         </div>
       </div> 

       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>


       <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
       <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
       <script type="text/javascript">
        function openNav() {
          document.getElementById("mySidepanel").style.width = "100%";
        }
        function closeNav() {
          document.getElementById("mySidepanel").style.width = "0";
        }

        function openForm() {
          document.getElementById("myForm").style.display = "block";
        }
        $(function() {
         setTimeout(function() { $("#hideDiv").fadeOut(1500); }, 3000)

       });


        function deleteimage($id){


         $.ajax({

          url:'deleteimage/'+$id,
          type:'GET',
          dataType: "json",

          success: function(response){

           alert('success');

         },

         error: function(response) {


          var v='image_'+$id;
          /* alert('.image_'+$id);*/

          $('.image_'+$id).hide();  
    /* var x = document.getElementById('image_'+$id);
         
    x.style.display = "none";*/

  },        

});



       }



       $(document).ready(function(){

        $(".user-details").click(function(){
          $(".main-menu-content").slideToggle("slow");
        })

        $(".btn1").click(function(){
          $(".page1").show();
          $(".hosting-page").hide();
        })

        $("button.btn1.btn2").click(function(){
         $(".page2").show();
         $(".page1").hide();
         $(".dryfruit-page").hide();
       })
      });

       var tl = new TimelineMax();

//Logos
TweenMax.set('.wp-logo', { scale: 1 })
TweenMax.set('.weebly-logo', { scale: 1 })  

// Pages 
TweenMax.set('.dashboard-page', { display: 'none' })
TweenMax.set('.hosting-page', { display: 'block' })
TweenMax.set('.marketplace-page', { display: 'none' })
TweenMax.set('.domain-page', { display: 'none' })
TweenMax.set('.message-page', { display: 'none' })
TweenMax.set('.manage-account-page', { display: 'none' })
TweenMax.set('.dryfruit-page', { display: 'none' })
TweenMax.set('.category-page', { display: 'none' })
TweenMax.set('.hosting1-page', { display: 'none' })
TweenMax.set('.dryfruit1-page', { display: 'none' })
TweenMax.set('.dryfruit2-page', { display: 'none' })
TweenMax.set('.domain1-page', { display: 'none' })
TweenMax.set('.category1-page', { display: 'none' })
TweenMax.set('.category2-page', { display: 'none' })
TweenMax.set('.category3-page', { display: 'none' })


TweenMax.to('.mobile-nav', 0, { x: -300 })

/* Message Btn Starts */
$('.message-btn').on('click', function(){  
 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.message-page').css({ display: 'block' })
 $('.manage-account-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'none' })

 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide();

});
/* Message Btn Ends */

// Manage Account Btn STARTS
$('.message-btn').on('click', function(){  
  $(this).addClass('active').removeClass('nav-btn');
  $('.marketplace-btn').removeClass('active').addClass('nav-btn');
  $('.domain-btn').removeClass('active').addClass('nav-btn');
  $('.hosting-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
  $('.category-btn').removeClass('active').addClass('nav-btn');
  $('.dashboard-btn').removeClass('active').addClass('nav-btn');
  $('.manage-account-btn').removeClass('active').addClass('nav-btn');
  $('.hosting1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
  $('.domain1-btn').removeClass('active').addClass('nav-btn');
  $('.category1-btn').removeClass('active').addClass('nav-btn');
  $('.category2-btn').removeClass('active').addClass('nav-btn');
  $('.category3-btn').removeClass('active').addClass('nav-btn');


  $('.dashboard-page').css({ display: 'none' })
  $('.hosting-page').css({ display: 'none' })
  $('.marketplace-page').css({ display: 'none' })
  $('.domain-page').css({ display: 'none' })
  $('.manage-account-page').css({ display: 'none' })
  $('.message-page').css({ display: 'block' })
  $('.dryfruit-page').css({ display: 'none' })
  $('.category-page').css({ display: 'none' })
  $('.hosting1-page').css({ display: 'none' })
  $('.dryfruit1-page').css({ display: 'none' })
  $('.dryfruit2-page').css({ display: 'none' })
  $('.domain1-page').css({ display: 'none' })
  
  $('.catagory1-page').hide();
  $('.catagory2-page').hide();
  $('.catagory3-page').hide();

});

$('.manage-account-btn').on('click', function(){
  $(this).addClass('active').removeClass('nav-btn');
  $('.marketplace-btn').removeClass('active').addClass('nav-btn');
  $('.domain-btn').removeClass('active').addClass('nav-btn');
  $('.hosting-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
  $('.category-btn').removeClass('active').addClass('nav-btn');
  $('.dashboard-btn').removeClass('active').addClass('nav-btn');
  $('.message-btn').removeClass('active').addClass('nav-btn');
  $('.hosting1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
  $('.domain1-btn').removeClass('active').addClass('nav-btn');
  $('.category1-btn').removeClass('active').addClass('nav-btn');
  $('.category2-btn').removeClass('active').addClass('nav-btn');
  $('.category3-btn').removeClass('active').addClass('nav-btn');


  $('.dashboard-page').css({ display: 'none' })
  $('.hosting-page').css({ display: 'none' })
  $('.marketplace-page').css({ display: 'none' })
  $('.domain-page').css({ display: 'none' })
  $('.message-page').css({ display: 'none' })
  $('.manage-account-page').css({ display: 'block' })
  $('.account-info-drop-down').css({ display: 'none' })
  $('.dryfruit-page').css({ display: 'none' })
  $('.category-page').css({ display: 'none' })
  $('.hosting1-page').css({ display: 'none' })
  $('.dryfruit1-page').css({ display: 'none' })
  $('.dryfruit2-page').css({ display: 'none' })
  $('.domain1-page').css({ display: 'none' })
  
  $('.catagory1-page').hide();
  $('.catagory2-page').hide();
  $('.catagory3-page').hide();
});

$('.hosting-btn').on('click', function() {
  $(this).addClass('active').removeClass('nav-btn');
  $('.dashboard-btn').removeClass('active').addClass('nav-btn');
  $('.marketplace-btn').removeClass('active').addClass('nav-btn');
  $('.domain-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
  $('.message-btn').removeClass('active').addClass('nav-btn'); 
  $('.manage-account-btn').removeClass('active').addClass('nav-btn');  
  $('.hosting1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
  $('.domain1-btn').removeClass('active').addClass('nav-btn');
  $('.category1-btn').removeClass('active').addClass('nav-btn');
  $('.category2-btn').removeClass('active').addClass('nav-btn');
  $('.category3-btn').removeClass('active').addClass('nav-btn');

  $('.dashboard-page').css({ display: 'none' })
  $('.hosting-page').css({ display: 'block' })
  $('.marketplace-page').css({ display: 'none' })
  $('.domain-page').css({ display: 'none' })
  $('.message-page').css({ display: 'none' })
  $('.manage-account-page').css({ display: 'none' })
  $('.dryfruit-page').css({ display: 'none' })
  $('.category-page').css({ display: 'none' })
  $('.hosting1-page').css({ display: 'none' })
  $('.dryfruit1-page').css({ display: 'none' })
  $('.dryfruit2-page').css({ display: 'none' })
  $('.domain1-page').css({ display: 'none' })
  
  $('.catagory1-page').hide();
  $('.catagory2-page').hide();
  $('.catagory3-page').hide();
  
});

$('.marketplace-btn').on('click', function(){
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');


 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'block' })
 $('.domain-page').css({ display: 'none' })
 $('.message-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'none' })
 
 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide();

});

$('.domain-btn').on('click', function() {
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');


 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'block' })
 $('.message-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'none' })
 
 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide(); 
});

$('.dryfruit-btn').on('click', function() {
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');
 $(".page1").hide();
 $(".page2").hide();

 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'block' })
 $('.message-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'none' })
 
 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide();
});

$('.category-btn').on('click', function() {
 
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');

 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.category-page').css({ display: 'block' })
 $('.message-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'none' })
 
 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide();

});

$('.hosting1-btn').on('click', function(){  
  $(this).addClass('active').removeClass('nav-btn');
  $('.marketplace-btn').removeClass('active').addClass('nav-btn');
  $('.domain-btn').removeClass('active').addClass('nav-btn');
  $('.hosting-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
  $('.category-btn').removeClass('active').addClass('nav-btn');
  $('.dashboard-btn').removeClass('active').addClass('nav-btn');
  $('.manage-account-btn').removeClass('active').addClass('nav-btn');
  $('.message-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
  $('.domain1-btn').removeClass('active').addClass('nav-btn');
  $('.category1-btn').removeClass('active').addClass('nav-btn');
  $('.category2-btn').removeClass('active').addClass('nav-btn');
  $('.category3-btn').removeClass('active').addClass('nav-btn');


  $('.dashboard-page').css({ display: 'none' })
  $('.hosting-page').css({ display: 'none' })
  $('.marketplace-page').css({ display: 'none' })
  $('.domain-page').css({ display: 'none' })
  $('.manage-account-page').css({ display: 'none' })
  $('.message-page').css({ display: 'none' })
  $('.dryfruit-page').css({ display: 'none' })
  $('.category-page').css({ display: 'none' })
  $('.hosting1-page').css({ display: 'block' })
  $('.dryfruit1-page').css({ display: 'none' })
  $('.dryfruit2-page').css({ display: 'none' })
  $('.domain1-page').css({ display: 'none' })
  
  $('.catagory1-page').hide();
  $('.catagory2-page').hide();
  $('.catagory3-page').hide();
});

$('.dryfruit1-btn').on('click', function(){  
  $(this).addClass('active').removeClass('nav-btn');
  $('.marketplace-btn').removeClass('active').addClass('nav-btn');
  $('.domain-btn').removeClass('active').addClass('nav-btn');
  $('.hosting-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
  $('.category-btn').removeClass('active').addClass('nav-btn');
  $('.dashboard-btn').removeClass('active').addClass('nav-btn');
  $('.manage-account-btn').removeClass('active').addClass('nav-btn');
  $('.hosting1-btn').removeClass('active').addClass('nav-btn');
  $('.message-btn').removeClass('active').addClass('nav-btn');
  $('.domain1-btn').removeClass('active').addClass('nav-btn');
  $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
  $('.category1-btn').removeClass('active').addClass('nav-btn');
  $('.category2-btn').removeClass('active').addClass('nav-btn');
  $('.category3-btn').removeClass('active').addClass('nav-btn');


  $('.dashboard-page').css({ display: 'none' })
  $('.hosting-page').css({ display: 'none' })
  $('.marketplace-page').css({ display: 'none' })
  $('.domain-page').css({ display: 'none' })
  $('.manage-account-page').css({ display: 'none' })
  $('.message-page').css({ display: 'none' })
  $('.dryfruit-page').css({ display: 'none' })
  $('.category-page').css({ display: 'none' })
  $('.hosting1-page').css({ display: 'none' })
  $('.dryfruit1-page').css({ display: 'block' })
  $('.dryfruit2-page').css({ display: 'none' })
  $('.domain1-page').css({ display: 'none' })
  
  $('.catagory1-page').hide();
  $('.catagory2-page').hide();
  $('.catagory3-page').hide();
});

$('.domain1-btn').on('click', function() {
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');


 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.message-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'block' })
 
 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide();
});

$('.dryfruit2-btn').on('click', function() {
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');
 $(".page1").hide();
 $(".page2").hide();

 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.message-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'block' })
 $('.domain1-page').css({ display: 'none' })
 
 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide();
});

$('.category1-btn').on('click', function() {
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');

 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.message-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'none' })
 
 $('.catagory1-page').show();
 $('.catagory2-page').hide();
 $('.catagory3-page').hide();
});

$('.category2-btn').on('click', function() {
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');
 $('.category3-btn').removeClass('active').addClass('nav-btn');

 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.message-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' });
 $('.dryfruit2-page').css({ display: 'none' });
 $('.domain1-page').css({ display: 'none' });
 

 $('.catagory1-page').hide();
 $('.catagory2-page').show();
 $('.catagory3-page').hide();

});

$('.category3-btn').on('click', function() {
 $(this).addClass('active').removeClass('nav-btn');
 $('.hosting-btn').removeClass('active').addClass('nav-btn');
 $('.dashboard-btn').removeClass('active').addClass('nav-btn');
 $('.marketplace-btn').removeClass('active').addClass('nav-btn');
 $('.domain-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit-btn').removeClass('active').addClass('nav-btn');
 $('.message-btn').removeClass('active').addClass('nav-btn'); 
 $('.manage-account-btn').removeClass('active').addClass('nav-btn'); 
 $('.hosting1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit1-btn').removeClass('active').addClass('nav-btn');
 $('.dryfruit2-btn').removeClass('active').addClass('nav-btn');
 $('.domain1-btn').removeClass('active').addClass('nav-btn');
 $('.category1-btn').removeClass('active').addClass('nav-btn');
 $('.category2-btn').removeClass('active').addClass('nav-btn');
 $('.category-btn').removeClass('active').addClass('nav-btn');

 $('.dashboard-page').css({ display: 'none' })
 $('.hosting-page').css({ display: 'none' })
 $('.marketplace-page').css({ display: 'none' })
 $('.category-page').css({ display: 'none' })
 $('.message-page').css({ display: 'none' })
 $('.dryfruit-page').css({ display: 'none' })
 $('.manage-account-page').css({ display: 'none' })
 $('.domain-page').css({ display: 'none' })
 $('.hosting1-page').css({ display: 'none' })
 $('.dryfruit1-page').css({ display: 'none' })
 $('.dryfruit2-page').css({ display: 'none' })
 $('.domain1-page').css({ display: 'none' })
 
 $('.catagory1-page').hide();
 $('.catagory2-page').hide();
 $('.catagory3-page').show();
});



</script>
</body>
</html>