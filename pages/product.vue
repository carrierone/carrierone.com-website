<template>
  <section class="product">


    <section class="inn-banner">
      <img src="~/assets/img/product-banner.png" alt="" />
      <b-container>
        <div class="inn-slide-cap">
          <h3>Product</h3>
        </div>
      </b-container>
    </section>

     <section class="prod-pg-sec">
         <b-container>
             <b-row>
              
              <b-col>
                  <div class="prod-pg-img">
                      <img src="~/assets/img/prod-pg-img.png" alt="" />
                  </div>
              </b-col>

              <b-col>
                  <div class="prod-pg-blk">
                      <h3>Heading
                       <b>Goes Here</b></h3>
                       <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                       <p>Ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap.</p>
                       <p>Into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publish software like aldus pagemaker.</p>
                  </div>
              </b-col>

             </b-row>
         </b-container>
     </section>


     <section class="prod-pop-pg">
         <b-container>
             <div class="prod-pop-title">
                 <h3>Popular Products & Services</h3>
                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
             </div>
             <ProductServices />
         </b-container>
     </section>

  </section>
</template>
<script>
export default {};
</script>
