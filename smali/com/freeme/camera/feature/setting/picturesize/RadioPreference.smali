.class public Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0b007b

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setWidgetLayoutResource(I)V

    new-instance p1, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference$1;-><init>(Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
