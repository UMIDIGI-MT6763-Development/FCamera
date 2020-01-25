.class public Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;
.super Ljava/lang/Object;
.source "VideoQualitySettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;
.implements Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final QUALITY_1080P:Ljava/lang/String; = "6"

.field private static final QUALITY_2160P:Ljava/lang/String; = "8"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnabled:Z

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;

.field private mPref:Lcom/freeme/camera/common/preference/Preference;

.field private mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

.field private mSelectedValue:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEntryValues:Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;)Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->setOnItemClickListener(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->setCurrentID(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getApp()Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEntryValues:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEntryValues:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "8"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "6"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSelectedValue:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEntryValues:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->setEntryValues(Ljava/util/List;)V

    const v0, 0x7f120021

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/Preference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/Preference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    const v0, 0x7f0901f3

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setId(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$1;-><init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSelectedValue:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->getCurrentResolution(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSelectedValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->getCurrentResolution(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mListener:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEnabled:Z

    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mEntryValues:Ljava/util/List;

    return-void
.end method

.method public setOnValueChangeListener(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mListener:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->getCurrentResolution(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSelectedValue:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mQualitySelector:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->mSelectedValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySelector;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
