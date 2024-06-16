curl -ls https://install.tuist.io | bash
tuist install 3.42.2
tuist fetch
tuist generate
xcodebuild clean -quiet
xcodebuild build-for-testing\
  -workspace 'mdEditor.xcworkspace'\
  -scheme 'mdEditor'\
  -destination 'platform=IOS Simulator, name=Iphone 14 Pro'
