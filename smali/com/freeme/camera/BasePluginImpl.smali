.class public Lcom/freeme/camera/BasePluginImpl;
.super Lcom/freeme/pluginmanager/BasePlugin;
.source "BasePluginImpl.java"

# interfaces
.implements Lcom/freeme/camera/IPluginModuleEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/pluginmanager/BasePlugin;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/pluginmanager/BasePlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blendOutput([B)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModuleIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModuleTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPictureSizeInfo()Lcom/freeme/camera/data/PictureSizeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hidePanel()V
    .locals 0

    return-void
.end method

.method public hideSettingPanel()V
    .locals 0

    return-void
.end method

.method public isInterceptCapture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mediaSaved(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    return-void
.end method

.method public showPanel(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public showPanel(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public showSettingPanel()V
    .locals 0

    return-void
.end method

.method public switchPanel(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
