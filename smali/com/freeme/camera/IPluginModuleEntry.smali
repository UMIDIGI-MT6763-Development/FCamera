.class public interface abstract Lcom/freeme/camera/IPluginModuleEntry;
.super Ljava/lang/Object;
.source "IPluginModuleEntry.java"


# virtual methods
.method public abstract blendOutput([B)[B
.end method

.method public abstract getModuleID()I
.end method

.method public abstract getModuleIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getModuleTitle()Ljava/lang/String;
.end method

.method public abstract getPictureSizeInfo()Lcom/freeme/camera/data/PictureSizeInfo;
.end method

.method public abstract getPkgName()Ljava/lang/String;
.end method

.method public abstract hidePanel()V
.end method

.method public abstract hideSettingPanel()V
.end method

.method public abstract isInterceptCapture()Z
.end method

.method public abstract mediaSaved(Landroid/net/Uri;)V
.end method

.method public abstract setVisible(I)V
.end method

.method public abstract showPanel(Landroid/view/ViewGroup;)V
.end method

.method public abstract showPanel(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
.end method

.method public abstract showSettingPanel()V
.end method

.method public abstract switchPanel(Landroid/view/ViewGroup;)V
.end method
