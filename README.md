# Rails Code Challenge - Sweets Vendors

For this assessment, you'll be working with a vendors and sweets domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Clone this repo. Then run `bundle install`, `rails db:migrate`, and `rails db:seed` to install dependencies and set up the database, and run `rails s` to start the server.

## The Domain

We've been building an application where we can see all of the sweets that vendors are selling. The basic skeleton has been started for you already, but we'd love to have your help with finishing it. Here at Flatiron School, we tend to consume lots of sweets. WE-LOVE-SWEETS.

![img](https://media.giphy.com/media/HGe4zsOVo7Jvy/giphy.gif)

**Vendors can sell many different sweets and sweets can be sold by many different vendors.** This means we need to create a model that let's us join the two together. For sake of simplicity, we'd like the model to be called `VendorSweet`. It will connect **a single sweet** and **a single vendor** together. Make sure to put the appropriate attributes on this model.

## Instructions / Deliverables

***To help complete this task we listed out the required steps below. Look through them carefully to get a sense of the requirements of this code challenge, then tackle them one by one.***

1. Start with creating the `VendorSweet` model. It should have an attribute for the price at which the sweet will be sold by the vendor (use an integer data type for this column: we'll treat the numbers in it as the price, in cents). We'll need to make sure to also have the appropriate migration to our schema for this to work. It is always suggested to test that our migration worked, so go into the console and try to create your first `VendorSweet` with a given `Sweet`, `Vendor`, and price.

2. A user should be able to visit a page with a form that will let them choose a `Vendor` and a `Sweet` and create a `VendorSweet` when they submit that form. The form should include a dropdown to select a vendor, another dropdown to select its sweet, and an input for the price. We'd like the route to this form to follow the RESTful convention (as well as the route that it should submit its form values to). Once the `VendorSweet` is created, we'd like to go to the selected vendor's show page.

3. Let's add some validations. `VendorSweets` should *not* be able to be saved if:
  a) the price is blank
  b) the price is a negative number
  c) the price is a number that isn't an integer (like 99.5) 
We should still go to the selected vendor's show page _if the `VendorSweet` is valid_, but if the `VendorSweet` is *not* valid, we should see the form, with the values the user entered. On that page, we should also list of validation messages about what went wrong. To help you test the validations, think about some prices your users could input that _would_ and _wouldn't_ be valid. Try them out.

4. The vendor's show page should include the vendor's name (ie. Insomnia Cookies) and a list of the sweets that they sell.

5. On the vendor's index page, we should see a list of vendor's names (we've already done this part for you). When a user clicks on a vendor's name, it should take a user to the vendor's show page.

6. On the sweet's index page, we should see a list of sweet's names (we've already done this part for you). When a user clicks on a sweet's name, it should take a user to the sweet's show page.

7. The sweet's show page should include the sweet's name.

### Hints / Tips

+ Remember we want to be RESTful. What URL should show info about a particular vendor? What URL should create the vendor_sweet association? What controller actions are associated?

+ When creating the vendor_sweet association think about the various ways [Rails allows us to define associations between models](http://guides.rubyonrails.org/association_basics.html))
+ Read through this documentation if your having a bit of trouble figuring out how to make the [dropdown](http://guides.rubyonrails.org/form_helpers.html#making-select-boxes-with-ease)

+ Also remember that [Validations are very important](http://guides.rubyonrails.org/active_record_validations.html)


### Stretch 

8. Make each vendor in the list of vendors on the sweet page link to its respective vendor

9. Make each sweet in the list of sweets on the vendor page link to its respective sweet

10. Create a validation that prevents a `VendorSweet` from being saved if one already exists for that `Vendor` and `Sweet`. Make sure the message shown to your users makes enough sense for them to fix the error.

## Rubric

### Models, Associations, and Validations

1. Models, associations, and validation not started or have errors that prevent the application from running. Missing validations, or validation syntax is incorrect. May have introduced models outside the specified domain.
2. Models, associations, and validations attempted but incomplete or have errors. Associations may construct the wrong relationships. Validations may be missing or applied to the wrong models. Advanced query methods incomplete or have errors.
3. Models, associations, and validations mostly complete and correct per the deliverables. Advanced validations and methods may be incomplete. May have unused or unnecessary code, possibly including duplication. May have written validations instead of using appropriate built-in validations. May implement advanced query methods with iterators instead of using built-in methods.
4. All models, associations, and validations are complete and correct, save minor mistakes in advanced deliverables. Advanced validations are complete and add informative error messages.
5. All specified models, associations, and validations complete and correct. Built-in validations are used when appropriate. Variable and method names are intention-revealing. Models have appropriate logic extracted from controllers and views. Advanced query methods use appropriate built-in methods.

### Routes, Controllers, and REST

1. Routes missing, naming does not follow REST, controller actions incomplete or with errors.
2. Some routing and controller logic implemented, but incompletely or incorrectly. May have routes or controller actions not included in the deliverables. May include routes that have no corresponding controller action or vice versa. Controller methods might do work beyond their responsibility in MVC.
3. Most routing and controller logic working as specified. Some advanced deliverables may be incomplete. Routing follows REST convention. Routing table might include some unused routes, or routes and actions that were not specified in the deliverables. Logic may be duplicated between methods.
4. Nearly all routing and controller deliverables completed, possibly with minor errors in advanced deliverables. Routing follows REST conventions. Some logic may be duplicated between controller actions, or not respect MVC separation of concerns. Attempts to use filters and private helper methods to reduce duplication, but some duplication may remain.
5. All routes and controllers deliverables work as described in the instructions. Routing follows REST naming conventions. Controller actions respect MVC separation of concerns, and don't have logic that belongs in the model or the view. ActionController filters and private helper methods are used appropriately to reduce duplication in controller actions.

### Views and Forms

1. Missing or unattempted views and forms, or erb syntax errors in views and forms. Forms created in the wrong views, do not accept the correct input, or do not submit to the correct location. Data not displayed correctly.
2. Views display some data correctly. Forms attempted, but with some errors that prevent submitting data correctly. May not have attempted or may have significant errors in advanced deliverables.
3. Uses view to show data as specified. At least one working form that submits data to the correct location. May not have attempted some advanced view features. May have included views not specified by the deliverables. May include model or controller logic in the view. Forms may accept invalid input (for example, out of range numbers). May not display validation errors correctly. May not use view helper methods to reduce duplication.
4. Nearly all view and form deliverables complete and correct. May have minor logic errors in advanced deliverables. Mostly does not include controller or model logic in the views. Mostly uses helpers to reduce duplication.
5. All view and form deliverables complete and correct, including advanced form components. No views not specified by the instructions. No model or controller logic present in the views. Appropriate use of helpers and built-ins to reduce duplication. Validation errors displayed correctly on form.
