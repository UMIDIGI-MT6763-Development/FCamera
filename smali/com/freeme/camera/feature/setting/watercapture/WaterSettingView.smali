.class public Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;
.super Ljava/lang/Object;
.source "WaterSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$OnWaterCaptureClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mChecked:Z

.field private mEnabled:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$OnWaterCaptureClickListener;

.field private mPref:Lcom/freeme/camera/common/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;)Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$OnWaterCaptureClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mListener:Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$OnWaterCaptureClickListener;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const v0, 0x7f120024

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setId(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f01c5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    new-instance v0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mPref:Lcom/freeme/camera/common/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mChecked:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mEnabled:Z

    return-void
.end method

.method public setWaterCaptureOnClickListener(Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$OnWaterCaptureClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->mListener:Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView$OnWaterCaptureClickListener;

    return-void
.end method

.method public unloadView()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/watercapture/WaterSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unloadView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
