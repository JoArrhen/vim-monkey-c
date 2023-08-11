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

