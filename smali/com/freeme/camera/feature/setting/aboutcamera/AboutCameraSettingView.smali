.class public Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;
.super Ljava/lang/Object;
.source "AboutCameraSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$OnAboutCameraConfirmListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAboutContent:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$OnAboutCameraConfirmListener;

.field private mPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/freeme/camera/common/app/IApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;)Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mAboutContent:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mAboutContent:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mAboutContent:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraContent;

    :cond_0
    const/high16 v0, 0x7f120000

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mPref:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mPref:Landroid/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public refreshView()V
    .locals 0

    return-void
.end method

.method public setAboutCameraConfirmedListener(Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$OnAboutCameraConfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView;->mListener:Lcom/freeme/camera/feature/setting/aboutcamera/AboutCameraSettingView$OnAboutCameraConfirmListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
