.class public Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;
.super Ljava/lang/Object;
.source "WhiteBalanceSettingView.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSettingView;
.implements Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnabled:Z

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$OnValueChangeListener;

.field private mOriginalEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Lcom/freeme/camera/common/preference/Preference;

.field private mSelectedValue:Ljava/lang/String;

.field private mSelector:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalIcons:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntryValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mIcons:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelectedValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030010

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030011

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    array-length v0, p1

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v4, p1, v1

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalEntries:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length p1, p2

    move v0, v3

    :goto_2
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalEntryValues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    array-length p1, v2

    :goto_3
    if-ge v3, p1, :cond_3

    aget p2, v2, v3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalIcons:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelectedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelector:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mIcons:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mActivity:Landroid/app/Activity;

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEnabled:Z

    return v0
.end method

.method public loadView(Landroid/preference/PreferenceFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelector:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelector:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelector:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;->setOnItemClickListener(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector$OnItemClickListener;)V

    :cond_0
    const v0, 0x7f120025

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/preference/Preference;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setRootPreference(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setId(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f014f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/preference/Preference;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;-><init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mListener:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$OnValueChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$OnValueChangeListener;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mPreference:Lcom/freeme/camera/common/preference/Preference;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEnabled:Z

    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalEntryValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalEntryValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v3, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntryValues:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mIcons:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mOriginalIcons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnValueChangeListener(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mListener:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$OnValueChangeListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelectedValue:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntryValues:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSelectedValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->mSummary:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public unloadView()V
    .locals 0

    return-void
.end method
