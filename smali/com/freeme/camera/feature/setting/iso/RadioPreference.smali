.class public Lcom/freeme/camera/feature/setting/iso/RadioPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0b0064

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/RadioPreference;->setWidgetLayoutResource(I)V

    new-instance p1, Lcom/freeme/camera/feature/setting/iso/RadioPreference$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/setting/iso/RadioPreference$1;-><init>(Lcom/freeme/camera/feature/setting/iso/RadioPreference;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
