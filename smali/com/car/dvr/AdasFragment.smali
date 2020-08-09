.class public Lcom/car/dvr/AdasFragment;
.super Landroid/preference/PreferenceFragment;
.source "AdasFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final KEY_ADAS_CALIBRATION:Ljava/lang/String; = "adas_calibration"

.field public static final KEY_ADAS_REPORT:Ljava/lang/String; = "adas_report"

.field public static final KEY_ADAS_REPORT2:Ljava/lang/String; = "adas_report2"

.field public static final KEY_ADAS_REPORT3:Ljava/lang/String; = "adas_report3"

.field private static final TAG:Ljava/lang/String; = "DVR.##AdasFragment##"


# instance fields
.field private mADASCalibrationEnable:Landroid/preference/Preference;

.field private mADASReport2Enable:Landroid/preference/CheckBoxPreference;

.field private mADASReport3Enable:Landroid/preference/CheckBoxPreference;

.field private mADASReportEnable:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHits:[J

.field private mTag:Ljava/lang/String;

.field private mVersion:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/car/dvr/AdasFragment;->mHits:[J

    const-string v0, ""

    iput-object v0, p0, Lcom/car/dvr/AdasFragment;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static adasIsEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/car/dvr/BaseCamera;->adasIsDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "adas_report"

    invoke-static {p0, v2, v1}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "adas_report2"

    invoke-static {p0, v2, v1}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "adas_report3"

    invoke-static {p0, v2, v1}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "adas_calibration"

    invoke-static {p0, v2, v1}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static getADASCalibration(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "adas_calibration"

    invoke-static {p0, v0}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setADASCalibration(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "adas_calibration"

    invoke-static {p0, v0, p1}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "DVR.##AdasFragment##"

    const-string v2, "oncreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/dvr/AdasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/car/dvr/AdasFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/car/dvr/AdasFragment;->addPreferencesFromResource(I)V

    const-string v1, "adas_calibration"

    invoke-virtual {p0, v1}, Lcom/car/dvr/AdasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/car/dvr/AdasFragment;->mADASCalibrationEnable:Landroid/preference/Preference;

    const-string v1, "adas_report"

    invoke-virtual {p0, v1}, Lcom/car/dvr/AdasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/car/dvr/AdasFragment;->mADASReportEnable:Landroid/preference/CheckBoxPreference;

    const-string v1, "adas_report2"

    invoke-virtual {p0, v1}, Lcom/car/dvr/AdasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/car/dvr/AdasFragment;->mADASReport2Enable:Landroid/preference/CheckBoxPreference;

    const-string v1, "adas_report3"

    invoke-virtual {p0, v1}, Lcom/car/dvr/AdasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/car/dvr/AdasFragment;->mADASReport3Enable:Landroid/preference/CheckBoxPreference;

    const-string v1, "DVR.##AdasFragment##"

    const-string v2, "oncreate: finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/car/dvr/AdasFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mADASCalibrationEnable:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v1, "adas_calibration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/car/dvr/AdasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mADASReportEnable:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v2, "adas_report"

    invoke-static {v1, v2, v3}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mADASReport2Enable:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v2, "adas_report2"

    invoke-static {v1, v2, v3}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mADASReport3Enable:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v2, "adas_report3"

    invoke-static {v1, v2, v3}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/car/dvr/AdasFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DVR.##AdasFragment##"

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

    const-string v0, "adas_calibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v1, "adas_calibration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/car/dvr/AdasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "adas_report"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v1, "adas_report"

    iget-object v2, p0, Lcom/car/dvr/AdasFragment;->mADASReportEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "adas_report2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v1, "adas_report2"

    iget-object v2, p0, Lcom/car/dvr/AdasFragment;->mADASReport2Enable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "adas_report3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/AdasFragment;->mContext:Landroid/content/Context;

    const-string v1, "adas_report3"

    iget-object v2, p0, Lcom/car/dvr/AdasFragment;->mADASReport3Enable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
