.class public Lcom/freeme/camera/common/preference/Preference;
.super Landroid/preference/Preference;
.source "Preference.java"


# static fields
.field public static final JUST_DISABLE_UI_WHEN_NOT_SELECTABLE:Z = false


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mID:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private mRemoved:Z

.field private mRootPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/freeme/camera/common/preference/Preference;->mID:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRemoved:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/freeme/camera/common/preference/Preference;->mID:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRemoved:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/freeme/camera/common/preference/Preference;->mID:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRemoved:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/freeme/camera/common/preference/Preference;->mID:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRemoved:Z

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/preference/Preference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/freeme/camera/common/preference/Preference;->mID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/preference/Preference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRemoved:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRemoved:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRemoved:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/freeme/camera/common/preference/Preference;->mID:I

    return-void
.end method

.method public setRootPreference(Landroid/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/preference/Preference;->mRootPreference:Landroid/preference/PreferenceScreen;

    return-void
.end method
