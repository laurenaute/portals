// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AdventureFormController from "./adventure_form_controller"
application.register("adventure-form", AdventureFormController)

import AdventureModalController from "./adventure_modal_controller"
application.register("adventure-modal", AdventureModalController)

import AdventureSubscriptionController from "./adventure_subscription_controller"
application.register("adventure-subscription", AdventureSubscriptionController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import HomeStarsController from "./home_stars_controller"
application.register("home-stars", HomeStarsController)

import NavbarController from "./navbar_controller"
application.register("navbar", NavbarController)

import TypedJsController from "./typed_js_controller"
application.register("typed-js", TypedJsController)
