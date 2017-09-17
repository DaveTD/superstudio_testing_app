Rails.application.routes.draw do
  resources :game_team_rosters
  resources :student_qualifiers
  resources :games
  resources :sports
  resources :schools
  resources :colleges
  resources :scouts
  resources :users
  resources :athletes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'superstudio_testing#list_tests'

  get '/superstudio/simple_to_json', to: 'superstudio_testing#simple_to_json'

  # First test group - single types, single and multiple groupings
  get '/superstudio/simple_test', to: 'superstudio_testing#simple_test'
  get '/superstudio/single_depth_test', to: 'superstudio_testing#single_depth_test'
  get '/superstudio/single_depth_multiple_object_test', to: 'superstudio_testing#single_depth_multiple_object_test'
  get '/superstudio/single_depth_array_test', to: 'superstudio_testing#single_depth_array_test'
  get '/superstudio/single_item_array_test', to: 'superstudio_testing#single_item_array_test'
  get '/superstudio/double_depth_array_test', to: 'superstudio_testing#double_depth_array_test'
  get '/superstudio/single_depth_two_array_test', to: 'superstudio_testing#single_depth_two_array_test'

  get '/superstudio/simple_test_single', to: 'superstudio_testing#simple_test_single'
  get '/superstudio/single_depth_test_single', to: 'superstudio_testing#single_depth_test_single'
  get '/superstudio/single_depth_multiple_object_test_single', to: 'superstudio_testing#single_depth_multiple_object_test_single'
  get '/superstudio/single_depth_array_test_single', to: 'superstudio_testing#single_depth_array_test_single'
  get '/superstudio/single_item_array_test_single', to: 'superstudio_testing#single_item_array_test_single'
  get '/superstudio/double_depth_array_test_single', to: 'superstudio_testing#double_depth_array_test_single'
  get '/superstudio/single_depth_two_array_test_single', to: 'superstudio_testing#single_depth_two_array_test_single'

  get '/superstudio/simple_test_double', to: 'superstudio_testing#simple_test_double'
  get '/superstudio/single_depth_test_double', to: 'superstudio_testing#single_depth_test_double'
  get '/superstudio/single_depth_multiple_object_test_double', to: 'superstudio_testing#single_depth_multiple_object_test_double'
  get '/superstudio/single_depth_array_test_double', to: 'superstudio_testing#single_depth_array_test_double'
  get '/superstudio/single_item_array_test_double', to: 'superstudio_testing#single_item_array_test_double'
  get '/superstudio/double_depth_array_test_double', to: 'superstudio_testing#double_depth_array_test_double'
  get '/superstudio/single_depth_two_array_test_double', to: 'superstudio_testing#single_depth_two_array_test_double'
  # First test group - single types, single and multiple groupings

  # Second test group - single objects interacting with eachother, value arrays
  get '/superstudio/double_depth_single_object', to: 'superstudio_testing#double_depth_single_object'
  get '/superstudio/double_depth_single_object_paired_first_level', to: 'superstudio_testing#double_depth_single_object_paired_first_level'
  get '/superstudio/double_depth_single_object_paired_first_level_b', to: 'superstudio_testing#double_depth_single_object_paired_first_level_b'
  get '/superstudio/triple_depth_single_object', to: 'superstudio_testing#triple_depth_single_object'
  get '/superstudio/single_object_with_value_array', to: 'superstudio_testing#single_object_with_value_array'
  get '/superstudio/value_array_in_single_object', to: 'superstudio_testing#value_array_in_single_object'
  # Second test group - single objects interacting with eachother, value arrays

  # Third test group
  # array of objects inside single object
  get '/superstudio/object_array_in_single_object', to: 'superstudio_testing#object_array_in_single_object'

  # single object inside array of objects
  get '/superstudio/single_object_in_object_array', to: 'superstudio_testing#single_object_in_object_array'

  # single object inside single object inside array of objects
  get '/superstudio/double_depth_single_object_in_object_array', to: 'superstudio_testing#double_depth_single_object_in_object_array'
  
  # value array inside single object inside array of objects
  get '/superstudio/value_array_inside_object_array', to: 'superstudio_testing#value_array_inside_object_array'
  
  # single object inside array of objects inside single object
  get '/superstudio/single_object_in_objert_array_in_single_object', to: 'superstudio_testing#single_object_in_objert_array_in_single_object'
  
  # array of objects inside array of objects
  get '/superstudio/double_depth_array_objects', to: 'superstudio_testing#double_depth_array_objects'

  # two arrays of objects inside array of objects
  get '/superstudio/double_depth_array_objects_in_object_array', to: 'superstudio_testing#double_depth_array_objects_in_object_array'

  # triple nested array of objects
  get '/superstudio/triple_depth_array_objects', to: 'superstudio_testing#triple_depth_array_objects'

  # value array inside array of objects nested inside array of objects
  get '/superstudio/value_array_in_object_array_in_object_array', to: 'superstudio_testing#value_array_in_object_array_in_object_array'

  # value array next to array of objects nested inside array of objects
  get '/superstudio/value_array_object_array_in_object_array', to: 'superstudio_testing#value_array_object_array_in_object_array'

  # single object next to array of objects inside array of objects
  get '/superstudio/single_object_object_array_in_object_array', to: 'superstudio_testing#single_object_object_array_in_object_array'
  # Third test group


  # Fourth test group - beta tests

  # Fourth test group - beta tests


  # Fifth test group - more complex combinations
  # test more combinations at deeper depths
  # Fifth test group - more complex combinations


end
