if exists("b:current_syntax")
    finish
endif

syntax region	monkeyCString		start=/\v"/ skip=/\v\\./ end=/\v"/
syntax match	monkeyCCharacter	"L\='[^\\]'"
syntax keyword	monkeyCBoolean		false true
syntax keyword	monkeyCConditional	if else has instanceof switch
syntax match	monkeyCInclude		"Toybox.\w\+"
syntax keyword	monkeyCKeyword		using as extends import
syntax keyword	monkeyCStatement	new return continue hidden
syntax keyword	monkeyCStorageClass	var const static public private protected enum
syntax keyword	monkeyCStructure	class function interface module
syntax keyword	monkeyCIdentifier	self me
syntax keyword	monkeyCLabel	        case break default
syntax keyword	monkeyCException	try catch finally throw
syntax keyword	monkeyCRepeat           while for	

syntax keyword	monkeyCType		Gfx Ui
syntax keyword	monkeyCType		Array Dictionary Number Float Long Double String Boolean Void

" Toybox.* Classes
syntax keyword  monkeyCType             Activity ActivityMonitor ActivityRecording Ant AntPlus Application Attention Authentication
syntax keyword  monkeyCType             Background BluetoothLowEnergy Communications Complications Cryptography FitContributor Graphics
syntax keyword  monkeyCType             Lang Math Media PersistedContent PersistedLocations Position Sensor SensorHistory SensorLogging 
syntax keyword  monkeyCType             StringUtil System Test Time Timer UserProfile WatchUi Weather

"Toybox.*.* Classes
syntax keyword  monkeyCType             AccelerometerData ActionMenu ActionMenuDelegate ActionMenuItem ActiveContent
syntax keyword  monkeyCType             ActiveMinutes AffineTransform AlbumArt AnimationDelegate AnimationLayer
syntax keyword  monkeyCType             AnimationResource AntPlusNotAllowedException AppBase AppNotInstalledException
syntax keyword  monkeyCType             Array AssertException AudioContentProviderApp AudioFormat
syntax keyword  monkeyCType             BacklightOnTooLongException BatteryStatus BehaviorDelegate BikeCadence
syntax keyword  monkeyCType             BikeCadenceInfo BikeCadenceListener BikeLight BikePower BikePowerListener
syntax keyword  monkeyCType             BikeRadar BikeRadarListener BikeSpeed BikeSpeedCadence BikeSpeedCadenceInfo
syntax keyword  monkeyCType             BikeSpeedCadenceListener BikeSpeedInfo BikeSpeedListener Bitmap
syntax keyword  monkeyCType             BitmapReference BitmapResource BitmapTexture BleDelegate Boolean BoundingBox
syntax keyword  monkeyCType             BufferedBitmap BufferedBitmapReference BurstListener BurstPayload
syntax keyword  monkeyCType             BurstPayloadIterator Button ByteArray CacheStatistics CalculatedCadence
syntax keyword  monkeyCType             CalculatedPower CalculatedWheelDistance CalculatedWheelSpeed ChannelAssignment
syntax keyword  monkeyCType             Char Characteristic CheckboxMenu CheckboxMenuItem Cipher
syntax keyword  monkeyCType             CipherBasedMessageAuthenticationCode ClickEvent ClockTime CommonData
syntax keyword  monkeyCType             Complication ComplicationNotFoundException Confirmation ConfirmationDelegate
syntax keyword  monkeyCType             ConnectionInfo ConnectionListener Content ContentDelegate ContentIterator
syntax keyword  monkeyCType             ContentMetadata ContentRef ContentRefIterator Course CryptoConfig
syntax keyword  monkeyCType             CurrentConditions CustomButton CustomMenu CustomMenuItem DailyForecast
syntax keyword  monkeyCType             DataField DataFieldAlert Dc DerailleurStatus Descriptor Device DeviceConfig
syntax keyword  monkeyCType             DeviceListener DevicePairException DeviceSettings DeviceState Dictionary
syntax keyword  monkeyCType             Double DragEvent Drawable Duration EncryptionInvalidSettingsException
syntax keyword  monkeyCType             Exception ExitDataSizeLimitException Field Filter FirFilter FitnessEquipment
syntax keyword  monkeyCType             FitnessEquipmentData FitnessEquipmentListener FitnessEquipmentMode FlickEvent
syntax keyword  monkeyCType             Float FontReference FontResource GenericChannel GlanceView GlanceViewDelegate
syntax keyword  monkeyCType             Gregorian GyroscopeData Hash HashBasedMessageAuthenticationCode HeartRateData
syntax keyword  monkeyCType             HeartRateIterator HeartRateSample History HourlyForecast IconMenuItem Id
syntax keyword  monkeyCType             IirFilter Info InputDelegate Intent InvalidBackgroundTimeException
syntax keyword  monkeyCType             InvalidBitmapResourceException InvalidBlockSizeException
syntax keyword  monkeyCType             InvalidHexStringException InvalidMenuItemTypeException InvalidOptionsException
syntax keyword  monkeyCType             InvalidPaletteException InvalidPointException InvalidRequestException
syntax keyword  monkeyCType             InvalidSelectableStateException InvalidValueException Iterator Key
syntax keyword  monkeyCType             KeyAgreement KeyEvent KeyPair Layer LightNetwork LightNetworkListener
syntax keyword  monkeyCType             LocalMoment Location Logger Long MagnetometerData MailboxIterator
syntax keyword  monkeyCType             ManufacturerInfo MapMarker MapPolyline MapTrackView MapView Menu
syntax keyword  monkeyCType             MenuInputDelegate MenuItem Message MessageSizeLimitException Method Moment
syntax keyword  monkeyCType             Number NumberPicker NumberPickerDelegate OAuthMessage Object
syntax keyword  monkeyCType             ObjectStoreAccessException OperationNotAllowedException PedalPowerBalance
syntax keyword  monkeyCType             PhoneAppMessage Picker PickerDelegate PickerFactory PlaybackProfile
syntax keyword  monkeyCType             PlayerColors PreviousOperationNotCompleteException ProductInfo Profile
syntax keyword  monkeyCType             ProfileInfo ProfileRegistrationException ProgressBar Properties
syntax keyword  monkeyCType             ProviderIconInfo RadarTarget RealTimeClockNotValidException ResistanceSettings
syntax keyword  monkeyCType             ResourceReference ReviewResponseToken Route RunningDynamics
syntax keyword  monkeyCType             RunningDynamicsData RunningDynamicsListener ScanResult Selectable
syntax keyword  monkeyCType             SelectableEvent SensorData SensorHistoryIterator SensorInfo SensorInfoIterator
syntax keyword  monkeyCType             SensorLogger SensorLoggingStats SensorPosition SensorSample
syntax keyword  monkeyCType             SerializationException Service ServiceDelegate Session Shifting
syntax keyword  monkeyCType             ShiftingListener ShiftingStatus SimpleDataField SimulationSettings Stats
syntax keyword  monkeyCType             Storage StorageFullException String SwipeEvent Symbol
syntax keyword  monkeyCType             SymbolNotAllowedException SyncDelegate SystemButton TargetPowerSettings Text
syntax keyword  monkeyCType             TextArea TextPicker TextPickerDelegate Timer ToggleMenuItem ToneProfile
syntax keyword  monkeyCType             TooManySensorDataListenersException TorqueEffectivenessPedalSmoothness Track
syntax keyword  monkeyCType             UnableToAcquireChannelException UnableToAcquireEncryptedChannelException
syntax keyword  monkeyCType             UnexpectedAppTypeException UnexpectedTypeException UserActivity
syntax keyword  monkeyCType             UserActivityHistoryIterator UserSettings Uuid UuidFormatException
syntax keyword  monkeyCType             ValueOutOfBoundsException VectorFont VibeProfile View ViewLoop
syntax keyword  monkeyCType             ViewLoopDelegate ViewLoopFactory WatchFace WatchFaceDelegate
syntax keyword  monkeyCType             WatchFacePowerInfo Waypoint WeakReference Workout WorkoutIntervalStep
syntax keyword  monkeyCType             WorkoutStep WorkoutStepInfo Menu2 Menu2InputDelegate

" Toybox instance functions
syntax keyword monkeyCFunction          abs acos add addAll addItem addKey addLap addLayer addLocation
syntax keyword monkeyCFunction          allowTrialMessage animate apply asin assert assertEqual assertEqualMessage
syntax keyword monkeyCFunction          assertMessage assertNotEqual assertNotEqualMessage atan atan2 backlight
syntax keyword monkeyCFunction          canSkip cancelAllAnimations cancelAllRequests cccdUuid ceil changeView
syntax keyword monkeyCFunction          charArrayToString checkWifiConnection clear clearClip clearLayers
syntax keyword monkeyCFunction          clearProperties clearValues close compare compute concatenate controlEquipment
syntax keyword monkeyCFunction          convertEncodedString cos createBoundingBox createBufferedBitmap createColor
syntax keyword monkeyCFunction          createField createPublicKey createSession debug decodeNumber decrypt
syntax keyword monkeyCFunction          deleteActivityCompletedEvent deleteCachedItem deleteGoalEvent deleteItem
syntax keyword monkeyCFunction          deleteOAuthResponseEvent deletePhoneAppMessageEvent deleteProperty
syntax keyword monkeyCFunction          deletePushNotificationEvent deleteSleepEvent deleteStepsEvent
syntax keyword monkeyCFunction          deleteTemporalEvent deleteValue deleteWakeEvent digest disableEncryption
syntax keyword monkeyCFunction          disableSensorType discard divide draw drawAngledText drawArc drawBitmap
syntax keyword monkeyCFunction          drawBitmap2 drawCircle drawEllipse drawFooter drawForeground drawLine
syntax keyword monkeyCFunction          drawOffsetBitmap drawPoint drawRadialText drawRectangle drawRoundedRectangle
syntax keyword monkeyCFunction          drawScaledBitmap drawText drawTitle duration emptyMailbox enableEncryption
syntax keyword monkeyCFunction          enableLocationEvents enableSensorEvents enableSensorType encodeBase64
syntax keyword monkeyCFunction          encodeNumber encodeURL encrypt equals error exit exitTo fillCircle fillEllipse
syntax keyword monkeyCFunction          fillPolygon fillRectangle fillRoundedRectangle find findDrawableById
syntax keyword monkeyCFunction          findItemById fitTextToArea floor format generateSecret
syntax keyword monkeyCFunction          generateSignedOAuthHeader get getActivityCompletedEventRegistered
syntax keyword monkeyCFunction          getActivityInfo getApp getAppCourses getAppRoutes getAppTracks getAppWaypoints
syntax keyword monkeyCFunction          getAppWorkouts getAppearance getAvailableConnectionCount getBackgroundColor
syntax keyword monkeyCFunction          getBackgroundData getBatteryStatus getBikeLights getBodyBatteryHistory
syntax keyword monkeyCFunction          getBytes getCacheStatistics getCachedContentObj getCadenceInfo
syntax keyword monkeyCFunction          getCalculatedCadence getCalculatedPower getCalculatedWheelDistance
syntax keyword monkeyCFunction          getCalculatedWheelSpeed getCapableModes getCharacteristic getCharacteristics
syntax keyword monkeyCFunction          getClockTime getColorDepth getComplication getComplications
syntax keyword monkeyCFunction          getComponentIdentifiers getContentDelegate getContentIterator getContentRef
syntax keyword monkeyCFunction          getContentRefIter getContentType getCoordinates getCourses
syntax keyword monkeyCFunction          getCurrentConditions getCurrentSport getCurrentTime getCurrentView
syntax keyword monkeyCFunction          getCurrentWorkoutStep getDailyForecast getDaylightSavingsTimeOffset getDc
syntax keyword monkeyCFunction          getDescriptor getDescriptors getDeterminant getDevice getDeviceConfig
syntax keyword monkeyCFunction          getDeviceName getDeviceSettings getDeviceState getDimensions getDirection
syntax keyword monkeyCFunction          getDistance getDrawable getElevationHistory getEquipmentData getErrorMessage
syntax keyword monkeyCFunction          getFontAscent getFontDescent getFontHeight getFrameRate getGlanceTheme
syntax keyword monkeyCFunction          getGlanceView getGoalEventRegistered getGoalView getHeartRateHistory
syntax keyword monkeyCFunction          getHeartRateZones getHeight getHistory getHourlyForecast getIcon getId
syntax keyword monkeyCFunction          getImage getInfo getInitialView getInstance getItem getKey getLabel
syntax keyword monkeyCFunction          getLastTemporalEventTime getLayerIndex getLayers getLocation getMailbox
syntax keyword monkeyCFunction          getManufacturerInfo getManufacturerSpecificData
syntax keyword monkeyCFunction          getManufacturerSpecificDataIterator getMapMode getMatrix getMax
syntax keyword monkeyCFunction          getMaxSampleRate getMetadata getMin getName getNetworkMode getNetworkState
syntax keyword monkeyCFunction          getNewestSampleTime getNextWorkoutStep getNumberOfFrames
syntax keyword monkeyCFunction          getOAuthResponseEventRegistered getObscurityFlags getOffset
syntax keyword monkeyCFunction          getOldestSampleTime getOxygenSaturationHistory getPairedDevices getPalette
syntax keyword monkeyCFunction          getPayload getPedalPowerBalance getPhoneAppMessageEventRegistered
syntax keyword monkeyCFunction          getPlaybackConfigurationView getPlaybackProfile getPlaybackStartPosition
syntax keyword monkeyCFunction          getPressureHistory getPreviousState getPrivateKey getProductInfo getProfile
syntax keyword monkeyCFunction          getProfileInfo getProjectedLocation getProperty getProviderIconInfo
syntax keyword monkeyCFunction          getPublicKey getPushNotificationEventRegistered getRadarInfo getRawData
syntax keyword monkeyCFunction          getRegisteredSensors getResistanceSettings getResource getRoutes getRssi
syntax keyword monkeyCFunction          getRunningDynamics getSensorPosition getService getServiceData
syntax keyword monkeyCFunction          getServiceDelegate getServiceUuids getServices getSettingsView
syntax keyword monkeyCFunction          getShiftingStatus getSimulationSettings getSize getSleepEventRegistered
syntax keyword monkeyCFunction          getSpeedCadenceInfo getSpeedInfo getState getStats getStats2
syntax keyword monkeyCFunction          getStepsEventRegistered getStressHistory getSubLabel getSubscreen getSunrise
syntax keyword monkeyCFunction          getSunset getSyncConfigurationView getSyncDelegate getSystemStats
syntax keyword monkeyCFunction          getTargetPowerSettings getTemperatureHistory getTemporalEventRegisteredTime
syntax keyword monkeyCFunction          getText getTextDimensions getTextWidthInPixels getTimeZoneOffset getTimer
syntax keyword monkeyCFunction          getTorqueEffectivenessPedalSmoothness getTracks getTrainerMode
syntax keyword monkeyCFunction          getTrialDaysRemaining getType getUserActivityHistory getUserSettings getUuid
syntax keyword monkeyCFunction          getValue getVectorFont getVelocity getView getWakeEventRegistered getWaypoints
syntax keyword monkeyCFunction          getWidth getWorkouts getX getY greaterThan hasAddress hasConfigurationSupport
syntax keyword monkeyCFunction          hasFlashlightColor hasKey hashCode indexOf info initialize insertLayer invert
syntax keyword monkeyCFunction          invoke isAppInstalled isBackgroundScanEnabled isCached isChecked isConnected
syntax keyword monkeyCFunction          isDaylightSavingsTime isEmpty isEnabled isFocused isRecording isSameDevice
syntax keyword monkeyCFunction          isSelected isSyncNeeded isTrial isVisible keys length lessThan ln
syntax keyword monkeyCFunction          loadProperties loadResource localMoment log longToUuid makeImageRequest
syntax keyword monkeyCFunction          makeJsonRequest makeOAuthRequest makeReviewTokenRequest makeWebRequest mean
syntax keyword monkeyCFunction          method mode moment multiply next notifySyncComplete notifySyncProgress now
syntax keyword monkeyCFunction          numLocations onAccept onActivityCompleted onAdAction onAnimationEvent
syntax keyword monkeyCFunction          onAppInstall onAppUpdate onAuthenticationRequest onBack onBackgroundData
syntax keyword monkeyCFunction          onBatteryStatusUpdate onBikeCadenceUpdate onBikeLightUpdate onBikeRadarUpdate
syntax keyword monkeyCFunction          onBikeSpeedCadenceUpdate onBikeSpeedUpdate onCalculatedCadenceUpdate
syntax keyword monkeyCFunction          onCalculatedPowerUpdate onCalculatedWheelDistanceUpdate
syntax keyword monkeyCFunction          onCalculatedWheelSpeedUpdate onCancel onCharacteristicChanged
syntax keyword monkeyCFunction          onCharacteristicRead onCharacteristicWrite onComplete onConnectedStateChanged
syntax keyword monkeyCFunction          onCustomButton onDescriptorRead onDescriptorWrite onDeviceStateUpdate onDone
syntax keyword monkeyCFunction          onDrag onEnterSleep onError onExitSleep onFitnessEquipmentUpdate onFlick
syntax keyword monkeyCFunction          onFooter onGlanceEvent onGoalReached onHide onHold onKey onKeyPressed
syntax keyword monkeyCFunction          onKeyReleased onLayout onLightNetworkStateUpdate onManufacturerInfoUpdate
syntax keyword monkeyCFunction          onMenu onMenuItem onMessage onNextMode onNextMultisportLeg onNextPage
syntax keyword monkeyCFunction          onNextView onNightModeChanged onNumberPicked onOAuthResponse onPartialUpdate
syntax keyword monkeyCFunction          onPedalPowerBalanceUpdate onPhoneAppMessage onPowerBudgetExceeded onPress
syntax keyword monkeyCFunction          onPreviousMode onPreviousPage onPreviousView onProductInfoUpdate
syntax keyword monkeyCFunction          onProfileRegister onReceiveComplete onReceiveFail onRelease onRepeat
syntax keyword monkeyCFunction          onResponse onRunningDynamicsUpdate onScanResults onScanStateChange onSelect
syntax keyword monkeyCFunction          onSelectable onSensorPositionUpdate onSentMessage onSettingsChanged
syntax keyword monkeyCFunction          onShiftingUpdate onShow onShuffle onSleepTime onSong onStart onStartSync
syntax keyword monkeyCFunction          onSteps onStop onStopSync onStorageChanged onSwipe onTap onTemporalEvent
syntax keyword monkeyCFunction          onTextEntered onThumbsDown onThumbsUp onTimerLap onTimerPause onTimerReset
syntax keyword monkeyCFunction          onTimerResume onTimerStart onTimerStop onTitle
syntax keyword monkeyCFunction          onTorqueEffectivenessPedalSmoothnessUpdate onTransmitComplete onTransmitFail
syntax keyword monkeyCFunction          onUpdate onValidateProperty onWakeTime onWorkoutStarted onWorkoutStepComplete
syntax keyword monkeyCFunction          onWrap open openAppSettingsEditor openWebPage pairDevice parse peekNext
syntax keyword monkeyCFunction          peekPrevious persistLocation play playTone popView pow preConcatenate previous
syntax keyword monkeyCFunction          print printStackTrace println pushView put rand randomBytes
syntax keyword monkeyCFunction          registerComplicationChangeCallback registerForActivityCompletedEvent
syntax keyword monkeyCFunction          registerForGoalEvent registerForOAuthMessages registerForOAuthResponseEvent
syntax keyword monkeyCFunction          registerForPhoneAppMessageEvent registerForPhoneAppMessages
syntax keyword monkeyCFunction          registerForPushNotificationEvent registerForSleepEvent registerForStepsEvent
syntax keyword monkeyCFunction          registerForTemporalEvent registerForWakeEvent registerProfile
syntax keyword monkeyCFunction          registerSensorDataListener release remove removeAll removeLayer repeatMode
syntax keyword monkeyCFunction          requestApplicationWake requestPlaybackProfileUpdate requestRead requestUpdate
syntax keyword monkeyCFunction          requestWrite resetContentCache resetContentIterator
syntax keyword monkeyCFunction          restoreHeadlightsNetworkModeControl restoreTaillightsNetworkModeControl
syntax keyword monkeyCFunction          reverse rotate round save saveProperties saveWaypoint scale sendAcknowledge
syntax keyword monkeyCFunction          sendBroadcast sendBurst sendManufacturerMessage sendPageRequest setAlbumArt
syntax keyword monkeyCFunction          setAntiAlias setBackgroundColor setBackgroundScan setBitmap setBlendMode
syntax keyword monkeyCFunction          setBurstListener setChecked setClip setClockHandPosition setColor
syntax keyword monkeyCFunction          setControlBar setData setDelegate setDeviceConfig setDisplayString setDrawable
syntax keyword monkeyCFunction          setEnabled setEnabledSensors setFill setFlashlightMode setFocus setFont
syntax keyword monkeyCFunction          setFooter setForeground setHeadlightsMode setIcon setJustification
syntax keyword monkeyCFunction          setKeyToSelectableInteraction setLabel setLayout setLocation
syntax keyword monkeyCFunction          setMailboxListener setMapMarker setMapMode setMapVisibleArea setMatrix
syntax keyword monkeyCFunction          setMetadata setMode setOffset setOptions setPalette setPayload setPenWidth
syntax keyword monkeyCFunction          setPolyline setProgress setProperty setScanState setScreenVisibleArea setSize
syntax keyword monkeyCFunction          setState setStroke setSubLabel setTaillightsMode setText setTheme
syntax keyword monkeyCFunction          setTimerEventListener setTitle setToRotation setToScale setToShear
syntax keyword monkeyCFunction          setToTranslation setTrainerMode setValue setVisible setWidth setX setY shear
syntax keyword monkeyCFunction          showActionMenu showAlert showToast shuffling sin size slice sqrt srand start
syntax keyword monkeyCFunction          startPlayback startSync startSync2 startUserReview stdev stillAlive stop
syntax keyword monkeyCFunction          stopPlayback stringToUuid subscribeToUpdates substring subtract switchToView
syntax keyword monkeyCFunction          tan toByteArray toChar toCharArray toDegrees toDouble toFloat toGeoString
syntax keyword monkeyCFunction          toIntent toLong toLongWithBase toLower toMoment toNumber toNumberWithBase
syntax keyword monkeyCFunction          toRadians toString toUpper toUtf8Array today toggleSignalLight transformPoint
syntax keyword monkeyCFunction          transformPoints translate transmit unpairDevice unregisterSensorDataListener
syntax keyword monkeyCFunction          unsubscribeFromAllUpdates unsubscribeFromUpdates update updateComplication
syntax keyword monkeyCFunction          updateItem utcInfo utf8ArrayToString validateProperty value values variance
syntax keyword monkeyCFunction          vibrate warning weak 

" Toybox variables
syntax keyword monkeyCIdentifier        accel accelerometerData accuracy activeMinutes activeMinutesDay
syntax keyword monkeyCIdentifier        activeMinutesWeek activeMinutesWeekGoal activeStep activityClass
syntax keyword monkeyCIdentifier        activityTrackingOn alarmCount album altitude ambientPressure arguments artist
syntax keyword monkeyCIdentifier        attemptSkipAfterThumbsDown averageCadence averageDistance averageHeartRate
syntax keyword monkeyCIdentifier        averagePower averageRestingHeartRate averageSpeed background backgroundColor
syntax keyword monkeyCIdentifier        basicResistance basicResistanceSupported battery batteryInDays batteryStatus
syntax keyword monkeyCIdentifier        batteryVoltage bearing bearingFromStart behavior bikeWeight birthYear bitRate
syntax keyword monkeyCIdentifier        bodyLocation cadence calories capacity channelType charging complicationId
syntax keyword monkeyCIdentifier        condition connectionAvailable connectionInfo currentCadence currentHeading
syntax keyword monkeyCIdentifier        currentHeartRate currentLocation currentLocationAccuracy
syntax keyword monkeyCIdentifier        currentOxygenSaturation currentPower currentSpeed data day decimationRate
syntax keyword monkeyCIdentifier        deviceNumber deviceType distance distanceToDestination distanceToNextPoint
syntax keyword monkeyCIdentifier        distanceUnits doNotDisturb draftFactor dst duration durationType durationValue
syntax keyword monkeyCIdentifier        dutyCycle elapsedDistance elapsedTime elevationAtDestination
syntax keyword monkeyCIdentifier        elevationAtNextPoint elevationUnits enabled encryptionId encryptionKey
syntax keyword monkeyCIdentifier        energyExpenditure executionTimeAverage executionTimeLimit feDistance
syntax keyword monkeyCIdentifier        feHeartRate feSpeed feelsLikeTemperature firmwareVersion firstDayOfWeek
syntax keyword monkeyCIdentifier        floorsClimbed floorsClimbedGoal floorsDescended forecastTime foregroundColor
syntax keyword monkeyCIdentifier        freeMemory frequency frontDerailleur frontDerailleurIndex frontDerailleurMax
syntax keyword monkeyCIdentifier        frontDerailleurSize gearIndex gearMax gearRatio gearSize gender genre
syntax keyword monkeyCIdentifier        groundContactBalance groundContactTime gyroscopeData heading
syntax keyword monkeyCIdentifier        heartBeatIntervals heartRate heartRateData height heightUnits highTemperature
syntax keyword monkeyCIdentifier        highlightBorderColor highlightFillColor hour hwRevision identifier
syntax keyword monkeyCIdentifier        inputButtons intensity invalidInboardShiftCount invalidOutboardShiftCount
syntax keyword monkeyCIdentifier        is24Hour isGlanceModeEnabled isNightModeEnabled isSleepMode isTouchScreen
syntax keyword monkeyCIdentifier        isVisible label leftOrCombinedPedalSmoothness leftTorqueEffectiveness length
syntax keyword monkeyCIdentifier        locX locY longLabel lowTemperature mag magnetometerData manufacturerId
syntax keyword monkeyCIdentifier        maxCadence maxHeartRate maxPower maxSpeed meanSeaLevelPressure messageId
syntax keyword monkeyCIdentifier        messagePeriod metersClimbed metersDescended min mode modelNumber moderate
syntax keyword monkeyCIdentifier        monkeyVersion month moveBarLevel name nameOfDestination nameOfNextPoint
syntax keyword monkeyCIdentifier        network networkKey128Bit networkKey64Bit notes notificationCount numChannels
syntax keyword monkeyCIdentifier        numComponents observationLocationName observationLocationPosition
syntax keyword monkeyCIdentifier        observationTime offCourseDistance operatingTime orientation oxygenSaturation
syntax keyword monkeyCIdentifier        paceUnits partNumber pedalPowerPercent phoneConnected pitch playbackControls
syntax keyword monkeyCIdentifier        playbackNotificationThreshold playerColors position power powerSensorType
syntax keyword monkeyCIdentifier        precipitationChance pressure progressBarBackgroundColor
syntax keyword monkeyCIdentifier        progressBarForegroundColor radioFrequency range ranges rawAmbientPressure
syntax keyword monkeyCIdentifier        rearDerailleur rearDerailleurIndex rearDerailleurMax rearDerailleurSize
syntax keyword monkeyCIdentifier        relativeHumidity repetitionNumber requirePlaybackNotification
syntax keyword monkeyCIdentifier        requiresBurnInProtection respirationRate responseCode restStep
syntax keyword monkeyCIdentifier        restingHeartRate rightPedalIndicator rightPedalSmoothness
syntax keyword monkeyCIdentifier        rightTorqueEffectiveness roll rssi runningStepLength sampleCount samplePeriod
syntax keyword monkeyCIdentifier        sampleRate screenHeight screenShape screenWidth searchThreshold
syntax keyword monkeyCIdentifier        searchTimeoutHighPriority searchTimeoutLowPriority sec
syntax keyword monkeyCIdentifier        separatePedalSmoothnessSupport serial shiftFailureCount shortLabel
syntax keyword monkeyCIdentifier        simulationSupported size skipPreviousThreshold sleepTime slope softwareVersion
syntax keyword monkeyCIdentifier        solarIntensity speed sport stanceTime startLocation startOfDay startTime state
syntax keyword monkeyCIdentifier        stateDefault stateDisabled stateHighlighted stateSelected step stepCount
syntax keyword monkeyCIdentifier        stepGoal stepLength steps subSport surfaceResistance swRevisionMain
syntax keyword monkeyCIdentifier        swRevisionSupplemental swimStrokeType swimSwolf systemLanguage targetPower
syntax keyword monkeyCIdentifier        targetPowerSupported targetType targetValueHigh targetValueLow technology
syntax keyword monkeyCIdentifier        temperature temperatureUnits textColor threat threatSide timeToRecovery
syntax keyword monkeyCIdentifier        timeZoneOffset timerState timerTime timestamp title tonesOn total totalAscent
syntax keyword monkeyCIdentifier        totalDescent totalMemory track trackNumber trainingEffect transmissionType
syntax keyword monkeyCIdentifier        type uniqueIdentifier unit uri usedMemory userInfoString userWeight value
syntax keyword monkeyCIdentifier        verticalOscillation verticalRatio vibrateOn vigorous vo2maxCycling
syntax keyword monkeyCIdentifier        vo2maxRunning wakeTime walkingFlag walkingStepLength weight weightUnits
syntax keyword monkeyCIdentifier        wheelDiameter when width windBearing windResistance windSpeed x y year z 

syntax keyword	monkeyCConstant		COLOR_WHITE COLOR_LT_GRAY COLOR_DK_GRAY COLOR_BLACK COLOR_RED COLOR_DK_RED COLOR_ORANGE COLOR_YELLOW COLOR_GREEN COLOR_DK_GREEN COLOR_BLUE COLOR_DK_BLUE COLOR_PURPLE COLOR_PINK COLOR_TRANSPARENT
syntax keyword	monkeyCConstant		FONT_XTINY FONT_TINY FONT_SMALL FONT_MEDIUM FONT_LARGE FONT_NUMBER_MILD FONT_NUMBER_MEDIUM FONT_NUMBER_HOT FONT_NUMBER_THAI_HOT FONT_SYSTEM_XTINY FONT_SYSTEM_TINY FONT_SYSTEM_SMALL FONT_SYSTEM_MEDIUM FONT_SYSTEM_LARGE FONT_SYSTEM_NUMBER_MILD FONT_SYSTEM_NUMBER_MEDIUM FONT_SYSTEM_NUMBER_HOT FONT_SYSTEM_NUMBER_THAI_HOT
syntax keyword	monkeyCConstant		TEXT_JUSTIFY_RIGHT TEXT_JUSTIFY_CENTER TEXT_JUSTIFY_LEFT TEXT_JUSTIFY_VCENTER
syntax keyword	monkeyCConstant		ARC_COUNTER_CLOCKWISE ARC_CLOCKWISE

syntax match	monkeyCOperator		"\v\*"
syntax match	monkeyCOperator		"\v/"
syntax match	monkeyCOperator		"\v\+"
syntax match	monkeyCOperator		"\v-"
syntax match	monkeyCOperator		"\v\?"
syntax match	monkeyCOperator		"\v\:"
syntax match	monkeyCOperator		"\v\%"
syntax match	monkeyCOperator		"\v\*\="
syntax match	monkeyCOperator		"\v/\="
syntax match	monkeyCOperator		"\v\+\="
syntax match	monkeyCOperator		"\v-\="
syntax match	monkeyCOperator		"\v\="
syntax match	monkeyCNumber		"\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syntax match	monkeyCNumber		"\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syntax match	monkeyCNumber		"\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syntax match	monkeyCNumber		"\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"
syntax match	monkeyCLabel		":\w\+"
syntax match	monkeyCComment		"\v//.*$"
syntax region   monkeyCMultiLineComment start="/\*" end="\*/"

highlight link	monkeyCString		String
highlight link	monkeyCCharacter	Character
highlight link	monkeyCBoolean		Constant
highlight link	monkeyCConditional	Conditional
highlight link	monkeyCInclude		Include
highlight link	monkeyCKeyword		Keyword
highlight link	monkeyCStatement	Statement
highlight link	monkeyCStructure	Structure
highlight link	monkeyCStorageClass	StorageClass
highlight link	monkeyCType		Type
highlight link	monkeyCConstant		Constant
highlight link	monkeyCFunction		Function
highlight link	monkeyCOperator		Operator
highlight link	monkeyCNumber		Number
highlight link	monkeyCLabel		Label
highlight link	monkeyCComment		Comment
highlight link monkeyCMultiLineComment  Comment
highlight link monkeyCIdentifier        Identifier
highlight link monkeyCException         Exception
highlight link monkeyCRepeat            Repeat

let b:current_syntax = "monkey-c"

