# The global platform for this project.
platform :ios, '14.5'

# Add pods for desired Firebase products.
# https://firebase.google.com/docs/ios/setup#available-pods

target 'MoneyManagement' do
  # Comment the next line if you don't want to use dynamic frameworks.
  use_frameworks!

  # Google Analytics without IDFA collection capability.
  #pod 'Firebase/AnalyticsWithoutAdIdSupport'

  # Firebase Firestore product.
  pod 'Firebase/Firestore', '8.7.0'

  # Firebase Authentication service.
  pod 'Firebase/Auth', '8.7.0'

  target 'MoneyManagementTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MoneyManagementUITests' do
    # Pods for testing
  end
end
