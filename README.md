#Housekeeping:



**6.5 - On the products "show" page - 'Stripe' cannot be identified on the local server, but it works fine on the production [Heroku] server**

**6.6 - Have to create an email receipt for purchasers
      -Also for some reason the dropdown on the product page won't work unless you click the any product name on top of a picture first**



################################   ASSIGNMENTS   &   GOALS   #######################################

#SECTION 5

-/ Fix 5.8 and 5.9
  --/ Figure out why comments rating does not show star icons

-/ 5.6 - Upload picture

#SECTION 6

-/ 6.2 - Create *User Test* for each model

#######################################   ISSUES   #####################################################

#BUGS


#CSS, RESPONSIVE

-/ All pages should be (at this point) at least nicely designed for laptop screens, but make sure that they are responsive everywhere

#CSS, AESTHETICS

-/  Style the pages
  --/ Tablet - Laptop:
    ---/  ORDERS
          DEVISE (and its sub-pages)
          USER (and its sub-pages)

#OTHER

-/ **PAGINATION**, did not include __@products = Product.all.paginate(page: params[:page], per_page: 3)__ because I do not understand it's purpose yet (unless it's just to list 3 products per page and I have just been coding it wrong?)
