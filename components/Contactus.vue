<template>
  <section class="contactuswidget">
    <b-container>
      <div class="cntc-title">
        <h3>Contact Us</h3>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
      </div>
      <b-form>

        <b-row>
          <b-col>
            <b-form-input
              id="input-1"
              type="text"
              placeholder="First Name"
              required
            ></b-form-input>
          </b-col>
          <b-col>
            <b-form-input
              id="input-2"
              type="text"
              placeholder="Last Name"
              required
            ></b-form-input>
          </b-col>
        </b-row>

        <b-row>
          <b-col>
            <b-form-input
              id="input-3"
              type="email"
              placeholder="Work Email"
              required
            ></b-form-input>
          </b-col>
          <b-col>
            <b-form-input
              id="input-4"
              type="tel"
              placeholder="Mobile Number"
              required
            ></b-form-input>
          </b-col>
        </b-row>

        <b-row>
          <b-col>
            <b-form-input
              id="input-5"
              type="text"
              placeholder="Job Title"
              required
            ></b-form-input>
          </b-col>
          <b-col>
            <b-form-input
              id="input-6"
              type="text"
              placeholder="Your Industries"
              required
            ></b-form-input>
          </b-col>
        </b-row>

         <b-row>
          <b-col>
            <b-form-input
              id="input-7"
              type="text"
              placeholder="Company"
              required
            ></b-form-input>
          </b-col>
          <b-col>
            <b-form-input
              id="input-8"
              type="text"
              placeholder="Country"
              required
            ></b-form-input>
          </b-col>
        </b-row>

        <b-row>
          <b-col>
            <b-form-textarea
                id="textarea"
                v-model="text"
                placeholder="More Details"
                ></b-form-textarea>
          </b-col>
        </b-row>

        <b-row>
            <b-col>
                <b-form-checkbox
                id="checkbox-1"
                v-model="status"
                name="checkbox-1"
                value="accepted"
                unchecked-value="not_accepted">
                I agree to Telia Carrier Privacy Policy & Cookie notice.
                </b-form-checkbox>
            </b-col>
        </b-row>

        <b-row>
            <b-col>
                <b-form-checkbox
                id="checkbox-2"
                v-model="status"
                name="checkbox-1"
                value="accepted"
                unchecked-value="not_accepted">
                I would like to receive personalized communications based on my preferences and use of products and services from Telia Carrier via E-mail.
                </b-form-checkbox>
            </b-col>
        </b-row>

        <b-row>
            <b-col>
                <button>Send Your Message</button>
            </b-col>
        </b-row>

      </b-form>
    </b-container>
  </section>
</template>
