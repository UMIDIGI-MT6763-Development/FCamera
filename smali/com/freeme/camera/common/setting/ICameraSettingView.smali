.class public interface abstract Lcom/freeme/camera/common/setting/ICameraSettingView;
.super Ljava/lang/Object;
.source "ICameraSettingView.java"


# static fields
.field public static final JUST_DISABLE_UI_WHEN_NOT_SELECTABLE:Z


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract loadView(Landroid/preference/PreferenceFragment;)V
.end method

.method public abstract refreshView()V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract unloadView()V
.end method
