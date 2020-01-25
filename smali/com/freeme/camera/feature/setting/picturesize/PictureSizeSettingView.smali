.class public Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;
.super Ljava/lang/Object;
.source "PictureSizeSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;
.implements Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;
    }
.end annotation


# static fields
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

.field private mListener:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;

.field private mPref:Lcom/freeme/camera/common/preference/Preference;

.field private mSelectedValue:Ljava/lang/String;

.field private mSizeSelector:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mEntryValues:Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;)Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSizeSelector:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mActivity:Landroid/app/Activity;

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[loadView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSizeSelector:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSizeSelector:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSizeSelector:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector;->setOnItemClickListener(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSelector$OnItemClickListener;)V

    :cond_0
    const v0, 0x7f120010

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/Preference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/Preference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    const v0, 0x7f09015b

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setId(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getPixelsAndRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSummary:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getPixelsAndRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mListener:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[refreshView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mPref:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mEnabled:Z

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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mEntryValues:Ljava/util/List;

    return-void
.end method

.method public setOnValueChangeListener(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mListener:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getPixelsAndRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->mSelectedValue:Ljava/lang/String;

    return-void
.end method

.method public unloadView()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unloadView]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
