.class public Lcom/car/dvr/GenericFragment;
.super Landroid/preference/PreferenceFragment;
.source "GenericFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final GPS_WATERMARK_PROPERTY:Ljava/lang/String; = "persist.dvr.watermark.enable"

.field private static final KEY_AUTO_SAVE_TIME:Ljava/lang/String; = "autosave_time"

.field private static final KEY_AUTO_SLEEP_TIME:Ljava/lang/String; = "autosleep_time"

.field public static final KEY_AUTO_START_RECORD:Ljava/lang/String; = "auto_start_record"

.field private static final KEY_BACK_CAMERA:Ljava/lang/String; = "back_quality"

.field public static final KEY_BACK_CAMERA_SCALE_TYPE:Ljava/lang/String; = "back_scale_type"

.field public static final KEY_BACK_CAMERA_VERTICAL_MIRROR:Ljava/lang/String; = "bak_cam_ver_mir"

.field private static final KEY_BIAODING:Ljava/lang/String; = "biaoding"

.field public static final KEY_FLASH_LIGHT:Ljava/lang/String; = "flash_light"

.field private static final KEY_FRONT_CAMERA:Ljava/lang/String; = "front_quality"

.field public static final KEY_FRONT_CAMERA_SCALE_TYPE:Ljava/lang/String; = "front_scale_type"

.field public static final KEY_FRONT_CAMERA_VERTICAL_MIRROR:Ljava/lang/String; = "front_cam_ver_mir"

.field public static final KEY_GPS_WATERMARK:Ljava/lang/String; = "gps_watermark"

.field public static final KEY_LEFT_CAMERA_VERTICAL_MIRROR:Ljava/lang/String; = "left_cam_ver_mir"

.field public static final KEY_MUTE_RECORD:Ljava/lang/String; = "mute_record"

.field public static final KEY_RIGHT_CAMERA_VERTICAL_MIRROR:Ljava/lang/String; = "right_cam_ver_mir"

.field public static final KEY_SHOW_FLOAT_BUTTON:Ljava/lang/String; = "show_float_button"

.field private static final KEY_STOP_PREVIEW_TIME:Ljava/lang/String; = "stoppreview_time"

.field private static final KEY_STORAGE_PATH:Ljava/lang/String; = "storage_path"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_VR_BACK:Ljava/lang/String; = "vr_back"

.field public static final OEM_BEIDOU:Z

.field public static final PROP_BACK_CAMEAR_MIR:Ljava/lang/String;

.field public static final PROP_FRONT_CAMEAR_MIR:Ljava/lang/String;

.field public static final REMOVE_FLASH_LIGHT:Z

.field private static final TAG:Ljava/lang/String; = "DVR.##GenericFragment##"

.field private static mPreviewBestfitEnable:Z

#by boba 10.08.2020
#select acc on cam
.field private static final KEY_ACC_ON_CAM:Ljava/lang/String; = "acc_on_cam"
.field private static final PROP_ACC_ON_CAM:Ljava/lang/String; = "persist.acc.on.cam.fullscreen"
.field private mAccOnCamPreference:Landroid/preference/ListPreference;

#by boba 12.08.2020
#text watermark
.field private static final KEY_TEXT_WATERMARK:Ljava/lang/String; = "text_watermark"
.field private static final PROP_TEXT_WATERMARK:Ljava/lang/String; = "persist.dvr.watermar"
.field private mTextWatermark:Landroid/preference/EditTextPreference;

# instance fields
.field private mAutoSaveTimePrefence:Landroid/preference/ListPreference;

.field private mAutoSleepTimePrefence:Landroid/preference/ListPreference;

.field private mAutoStartRecordEnable:Landroid/preference/CheckBoxPreference;

.field private mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

.field private mBackCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

.field private mBackPreference:Landroid/preference/ListPreference;

.field mBaseActivity:Lcom/car/dvr/BaseActivity;

.field private mBiaoding:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFlashLightEnable:Landroid/preference/CheckBoxPreference;

.field private mFloatBtnEnable:Landroid/preference/CheckBoxPreference;

.field private mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

.field private mFrontCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

.field private mFrontPreference:Landroid/preference/ListPreference;

.field private mGPSWaterMarkEnable:Landroid/preference/CheckBoxPreference;

.field private mHits:[J

.field private mLeftCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

.field private mMuteEnable:Landroid/preference/CheckBoxPreference;

.field private mRightCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

.field private mStopPreviewTimePrefence:Landroid/preference/ListPreference;

.field private mStoragePreference:Landroid/preference/ListPreference;

.field private mTag:Ljava/lang/String;

.field private mVRBackEnable:Landroid/preference/CheckBoxPreference;

.field private mVersion:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v0, :cond_0

    const-string v0, "persist.bak_cam.ver_mir"

    :goto_0
    sput-object v0, Lcom/car/dvr/GenericFragment;->PROP_FRONT_CAMEAR_MIR:Ljava/lang/String;

    .line 63
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v0, :cond_1

    const-string v0, "persist.front_cam.ver_mir"

    :goto_1
    sput-object v0, Lcom/car/dvr/GenericFragment;->PROP_BACK_CAMEAR_MIR:Ljava/lang/String;

    .line 65
    const-string v0, "ro.settings.remove"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flashlight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/GenericFragment;->REMOVE_FLASH_LIGHT:Z

    .line 67
    const-string v0, "ro.oem.customer"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S_BeiDou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/GenericFragment;->OEM_BEIDOU:Z

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/GenericFragment;->mPreviewBestfitEnable:Z

    return-void

    .line 62
    :cond_0
    const-string v0, "persist.front_cam.ver_mir"

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "persist.bak_cam.ver_mir"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/car/dvr/GenericFragment;->mHits:[J

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/car/dvr/GenericFragment;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/GenericFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/GenericFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mBiaoding:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/dvr/GenericFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/GenericFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAutoSaveTime(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 391
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getAutoSleepTime(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getAutoSleepTime(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getFlashLight(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getFlashLight(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getFrontCameraQuality(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getFrontCameraQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "value":Ljava/lang/String;
    const-string v1, "fake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const v1, 0x7f0a0031

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getGPSWaterMark(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getGPSWaterMark(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getMuteRecord(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getShowFloatButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getShowFloatButton(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getStopPreviewTime(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getStopPreviewTime(Landroid/content/Context;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 325
    :try_start_0
    iget-object v3, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 326
    .local v2, "manager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 327
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    const-string v3, "1.0.0"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string v17, "DVR.##GenericFragment##"

    const-string v18, "oncreate"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v16

    .line 109
    .local v16, "wm":Landroid/view/WindowManager;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 110
    .local v12, "size":Landroid/graphics/Point;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 111
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    div-int v17, v17, v18

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    const/16 v17, 0x1

    :goto_0
    sput-boolean v17, Lcom/car/dvr/GenericFragment;->mPreviewBestfitEnable:Z

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 116
    .local v11, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 117
    const v17, 0x7f040001

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->addPreferencesFromResource(I)V

#by boba 10.08.2020
#select acc on cam
move-object/from16 v0, p0
const-string v1, "acc_on_cam"
invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v1
check-cast v1, Landroid/preference/ListPreference;
iput-object v1, v0, Lcom/car/dvr/GenericFragment;->mAccOnCamPreference:Landroid/preference/ListPreference;

#by boba 12.08.2020
#text watermark
move-object/from16 v0, p0
const-string v1, "text_watermark"
invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v1
check-cast v1, Landroid/preference/EditTextPreference;
iput-object v1, v0, Lcom/car/dvr/GenericFragment;->mTextWatermark:Landroid/preference/EditTextPreference;

    .line 119
    const-string v17, "storage_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mStoragePreference:Landroid/preference/ListPreference;

    .line 120
    const-string v17, "autosave_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    .line 121
    const-string v17, "autosleep_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    .line 122
    const-string v17, "stoppreview_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    .line 123
    const-string v17, "front_quality"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    .line 124
    const-string v17, "ro.dvr.fakeFrontQuality"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "fakeQuality":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 126
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v7, "fakeQualityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 128
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "array":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    .end local v2    # "array":[Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "entryArray":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060003

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, "valueArray":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v4, "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v5, "entryValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v8, 0x0

    .line 138
    .local v8, "i":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 139
    .local v13, "str":Ljava/lang/String;
    invoke-interface {v4, v8, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fake"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v8, v9

    .line 141
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    .line 111
    .end local v3    # "entryArray":[Ljava/lang/String;
    .end local v4    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v5    # "entryValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v6    # "fakeQuality":Ljava/lang/String;
    .end local v7    # "fakeQualityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "pref":Landroid/content/SharedPreferences;
    .end local v13    # "str":Ljava/lang/String;
    .end local v15    # "valueArray":[Ljava/lang/String;
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 131
    .restart local v6    # "fakeQuality":Ljava/lang/String;
    .restart local v7    # "fakeQualityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .restart local v3    # "entryArray":[Ljava/lang/String;
    .restart local v4    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v5    # "entryValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v8    # "i":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v15    # "valueArray":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 147
    .end local v3    # "entryArray":[Ljava/lang/String;
    .end local v4    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v5    # "entryValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v7    # "fakeQualityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "valueArray":[Ljava/lang/String;
    :cond_3
    const-string v17, "back_quality"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mBackPreference:Landroid/preference/ListPreference;

    .line 151
    const-string v17, "auto_start_record"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mAutoStartRecordEnable:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v17, "flash_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mFlashLightEnable:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v17, "gps_watermark"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mGPSWaterMarkEnable:Landroid/preference/CheckBoxPreference;

    .line 154
    const-string v17, "vr_back"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mVRBackEnable:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v17, "mute_record"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mMuteEnable:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v17, "show_float_button"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mFloatBtnEnable:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v17, "front_scale_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    .line 158
    const-string v17, "back_scale_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    .line 159
    const-string v17, "front_cam_ver_mir"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mFrontCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v17, "bak_cam_ver_mir"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mBackCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    .line 161
    const-string v17, "left_cam_ver_mir"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mLeftCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v17, "right_cam_ver_mir"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mRightCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    .line 163
    const-string v17, "version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mVersion:Landroid/preference/Preference;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mVersion:Landroid/preference/Preference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    const-string v17, "persist.rear.record.disable"

    const/16 v18, -0x1

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mBackCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_4
    sget-boolean v17, Lcom/car/dvr/GenericFragment;->mPreviewBestfitEnable:Z

    if-nez v17, :cond_5

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_5
    const-string v17, "ro.dvr.float.view.enable"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_6

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFloatBtnEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_6
    const-string v17, "ro.dvr.camera.scale.enable"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_7

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    :cond_7
    sget-boolean v17, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-nez v17, :cond_8

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mLeftCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mRightCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_8
    sget-boolean v17, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-nez v17, :cond_9

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFrontCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_9
    const-string v17, "biaoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/GenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/GenericFragment;->mBiaoding:Landroid/preference/Preference;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mBiaoding:Landroid/preference/Preference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/car/dvr/GenericFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/dvr/GenericFragment$1;-><init>(Lcom/car/dvr/GenericFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    const-string v17, "persist.dvr.pano.view"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_a

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mBiaoding:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mStoragePreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mBackPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mAutoStartRecordEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    sget-boolean v17, Lcom/car/dvr/VideoInfo;->IS1080CVBS:Z

    if-nez v17, :cond_b

    sget-boolean v17, Lcom/car/dvr/VideoInfo;->FCAM_FIXED_720P:Z

    if-nez v17, :cond_b

    sget-boolean v17, Lcom/car/dvr/VideoInfo;->ISMIPI_288P:Z

    if-nez v17, :cond_b

    sget-boolean v17, Lcom/car/dvr/VideoInfo;->ISMIPI_576P:Z

    if-nez v17, :cond_b

    sget-boolean v17, Lcom/car/dvr/VideoInfo;->ISMIPI_480P:Z

    if-eqz v17, :cond_c

    .line 239
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_c
    sget-boolean v17, Lcom/car/dvr/GenericFragment;->REMOVE_FLASH_LIGHT:Z

    if-eqz v17, :cond_d

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFlashLightEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_d
    sget-boolean v17, Lcom/car/dvr/GenericFragment;->OEM_BEIDOU:Z

    if-eqz v17, :cond_e

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mGPSWaterMarkEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mFloatBtnEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/dvr/Util;->is3rdBackApkInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/GenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mVRBackEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f06000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 258
    .local v14, "strArray":[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_10

    .line 259
    aget-object v17, v14, v8

    invoke-static/range {v17 .. v17}, Lcom/car/common/OEM;->getString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v8

    .line 258
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 261
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a0052

    invoke-static/range {v18 .. v19}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a0053

    invoke-static/range {v18 .. v19}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 265
    const-string v17, "DVR.##GenericFragment##"

    const-string v18, "oncreate: finish"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/car/dvr/GenericFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 386
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 387
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 342
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

#by boba 10.08.2020
#select acc on cam
const-string v5, "persist.acc.on.cam.fullscreen"
const-string v4, ""
invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mAccOnCamPreference:Landroid/preference/ListPreference;
invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

#by boba 12.08.2020
#text watermark
const-string v5, "persist.dvr.watermar"
const-string v4, ""
invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mTextWatermark:Landroid/preference/EditTextPreference;
invoke-virtual {v5, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V
invoke-virtual {v5, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/ProviderUtils;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 345
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/ProviderUtils;->getStopPreviewTime(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 346
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/ProviderUtils;->getFrontCameraQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 347
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mFloatBtnEnable:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/ProviderUtils;->getShowFloatButton(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mMuteEnable:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 349
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mGPSWaterMarkEnable:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/ProviderUtils;->getGPSWaterMark(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 350
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mVRBackEnable:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    const-string v7, "vr_back_enable"

    invoke-static {v6, v7, v8}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    sget-boolean v5, Lcom/car/dvr/GenericFragment;->mPreviewBestfitEnable:Z

    if-eqz v5, :cond_0

    .line 353
    const-string v5, "persist.front.preview.bestfit"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 354
    .local v4, "scaleType":I
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 355
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    const-string v5, "persist.back.preview.bestfit"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 357
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    .end local v4    # "scaleType":I
    :cond_0
    sget-object v5, Lcom/car/dvr/GenericFragment;->PROP_FRONT_CAMEAR_MIR:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 362
    .local v1, "frontCameraVerticalMirrorEnable":Z
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    sget-object v5, Lcom/car/dvr/GenericFragment;->PROP_BACK_CAMEAR_MIR:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .local v0, "backCameraVerticalMirrorEnable":Z
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mBackCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    const-string v5, "persist.left_cam.ver_mir"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 368
    .local v2, "leftCameraVerticalMirrorEnable":Z
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mLeftCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    const-string v5, "persist.right_cam.ver_mir"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 371
    .local v3, "rightCameraVerticalMirrorEnable":Z
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mRightCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/car/dvr/GenericFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 374
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mStoragePreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mStoragePreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/car/common/OEM;->getString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v5, p0, Lcom/car/dvr/GenericFragment;->mBackPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/car/dvr/GenericFragment;->mBackPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 270
    const-string v0, "DVR.##GenericFragment##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v0, "front_quality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mFrontPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setFrontCameraQuality(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v0, "back_quality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mBackPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mBackPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/car/dvr/GenericFragment;->mBackPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 282
    :cond_2
    const-string v0, "autosave_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setAutoSaveTime(Landroid/content/Context;I)V

    .line 284
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/car/dvr/GenericFragment;->mAutoSaveTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 288
    :cond_3
    const-string v0, "autosleep_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 290
    :cond_4
    const-string v0, "stoppreview_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/car/common/OEM;->getString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mStopPreviewTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setStopPreviewTime(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 293
    :cond_5
    const-string v0, "storage_path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mStoragePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mStoragePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/car/dvr/GenericFragment;->mStoragePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 298
    :cond_6
    const-string v0, "gps_watermark"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mGPSWaterMarkEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setGPSWaterMark(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 300
    :cond_7
    const-string v0, "vr_back"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 301
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    const-string v1, "vr_back_enable"

    iget-object v2, p0, Lcom/car/dvr/GenericFragment;->mVRBackEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 302
    :cond_8
    const-string v0, "mute_record"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mMuteEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setMuteRecord(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 304
    :cond_9
    const-string v0, "show_float_button"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 305
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mFloatBtnEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setShowFloatButton(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 306
    :cond_a
    const-string v0, "front_scale_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    const-string v0, "persist.front.preview.bestfit"

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_b
    const-string v0, "back_scale_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 310
    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    const-string v0, "persist.back.preview.bestfit"

    iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mBackCameraScaleTypePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_c
    const-string v0, "front_cam_ver_mir"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 313
    sget-object v1, Lcom/car/dvr/GenericFragment;->PROP_FRONT_CAMEAR_MIR:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mFrontCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "0"

    goto :goto_1

    .line 314
    :cond_e
    const-string v0, "bak_cam_ver_mir"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 315
    sget-object v1, Lcom/car/dvr/GenericFragment;->PROP_BACK_CAMEAR_MIR:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mBackCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "1"

    :goto_2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "0"

    goto :goto_2

    .line 316
    :cond_10
    const-string v0, "left_cam_ver_mir"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 317
    const-string v1, "persist.left_cam.ver_mir"

    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mLeftCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "1"

    :goto_3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "0"

    goto :goto_3

    .line 318
    :cond_12
    const-string v0, "right_cam_ver_mir"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

#by boba 10.08.2020
#select acc on cam
#    if-eqz v0, :cond_0
if-eqz v0, :cond_101

    .line 319
    const-string v1, "persist.right_cam.ver_mir"

    iget-object v0, p0, Lcom/car/dvr/GenericFragment;->mRightCameraVerticalMirrorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "1"

    :goto_4
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "0"

    goto :goto_4

#by boba 10.08.2020
#select acc on cam
:cond_100
const-string v0, "acc_on_cam"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_0
iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mAccOnCamPreference:Landroid/preference/ListPreference;
invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
const-string v0, "persist.acc.on.cam.fullscreen"
invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_0

#by boba 12.08.2020
#text watermark
:cond_101
const-string v0, "text_watermark"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_100
iget-object v1, p0, Lcom/car/dvr/GenericFragment;->mTextWatermark:Landroid/preference/EditTextPreference;
const-string v0, "persist.dvr.watermar"
invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_0

.end method

.method public setBaseActivity(Lcom/car/dvr/BaseActivity;)V
    .locals 0
    .param p1, "ba"    # Lcom/car/dvr/BaseActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/car/dvr/GenericFragment;->mBaseActivity:Lcom/car/dvr/BaseActivity;

    .line 101
    return-void
.end method
