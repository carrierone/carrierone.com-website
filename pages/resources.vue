<template>
  <section class="resources">

    <section class="inn-banner">
      <img src="~/assets/img/res-baner.png" alt="" />
      <b-container>
        <div class="inn-slide-cap">
          <h3>Resources</h3>
        </div>
      </b-container>
    </section>

    <section class="map">
        <b-container>
            <div class="map-blk">
                <h3>Carrier One Network Map</h3>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13007096.848583253!2d-104.65588307069352!3d37.2581278129634!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sus!4v1639003242515!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </b-container>
    </section>

    <section class="pop-list">
        <b-container>
            <div class="pop-list-title">
                <h3>POP List</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>

            <div class="accordion" role="tablist">
            <b-row>
                <b-col cols="2">
                   <div class="acc-img">
                     <img src="~/assets/img/acc-img1.png" alt="" />
                   </div> 
                </b-col>
                <b-col cols="10">
                    <div class="acc-con">
                        <b-card no-body class="mb-1">
                    <b-card-header header-tag="header" class="p-1" role="tab">
                        <b-button block v-b-toggle.accordion-1 variant="info">
                            <h2>Lorem Ipsum is simply dummy text</h2>
                            <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book it has survived. 
                            </p>
                        </b-button>

                    </b-card-header>
                    <b-collapse id="accordion-1" visible accordion="my-accordion" role="tabpanel">
                        <b-card-body>
                            <b-card-text>
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                            </b-card-text>
                        </b-card-body>
                    </b-collapse>
                    </b-card>
                    </div>
                </b-col>
            </b-row>

            <b-row>
                <b-col cols="2">
                   <div class="acc-img">
                     <img src="~/assets/img/acc-img2.png" alt="" />
                   </div> 
                </b-col>
                <b-col cols="10">
                    <div class="acc-con">
                        <b-card no-body class="mb-1">
                    <b-card-header header-tag="header" class="p-1" role="tab">
                        <b-button block v-b-toggle.accordion-2 variant="info">
                            <h2>Lorem Ipsum is simply dummy text</h2>
                            <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book it has survived. 
                            </p>
                        </b-button>

                    </b-card-header>
                    <b-collapse id="accordion-2" visible accordion="my-accordion" role="tabpanel">
                        <b-card-body>
                            <b-card-text>
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                            </b-card-text>
                        </b-card-body>
                    </b-collapse>
                    </b-card>
                    </div>
                </b-col>
            </b-row>

            <b-row>
                <b-col cols="2">
                   <div class="acc-img">
                     <img src="~/assets/img/acc-img3.png" alt="" />
                   </div> 
                </b-col>
                <b-col cols="10">
                    <div class="acc-con">
                        <b-card no-body class="mb-1">
                    <b-card-header header-tag="header" class="p-1" role="tab">
                        <b-button block v-b-toggle.accordion-3 variant="info" >
                            <h2>Lorem Ipsum is simply dummy text</h2>
                            <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book it has survived. 
                            </p>
                        </b-button>

                    </b-card-header>
                    <b-collapse id="accordion-3" visible accordion="my-accordion" role="tabpanel">
                        <b-card-body>
                            <b-card-text>
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                            </b-card-text>
                        </b-card-body>
                    </b-collapse>
                    </b-card>
                    </div>
                </b-col>
            </b-row>

            <b-row class="lst-row">
                <b-col cols="2">
                   <div class="acc-img">
                     <img src="~/assets/img/acc-img4.png" alt="" />
                   </div> 
                </b-col>
                <b-col cols="10">
                    <div class="acc-con">
                        <b-card no-body class="mb-1">
                    <b-card-header header-tag="header" class="p-1" role="tab">
                        <b-button block v-b-toggle.accordion-4 variant="info" >
                            <h2>Lorem Ipsum is simply dummy text</h2>
                            <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book it has survived. 
                            </p>
                        </b-button>

                    </b-card-header>
                    <b-collapse id="accordion-4" visible accordion="my-accordion" role="tabpanel">
                        <b-card-body>
                            <b-card-text>
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                            </b-card-text>
                        </b-card-body>
                    </b-collapse>
                    </b-card>
                    </div>
                </b-col>
            </b-row>
            </div>

        </b-container>
    </section>
   

       <Contactus />
   
  </section>
</template>      