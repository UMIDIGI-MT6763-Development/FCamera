.class public Lcom/freeme/pluginmanager/BasePlugin;
.super Landroid/app/Activity;
.source "BasePlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[FREEME_DBG]BasePlugin"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHostContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/freeme/pluginmanager/BasePlugin;->mHostContext:Landroid/content/Context;

    :try_start_0
    const-string p1, "[FREEME_DBG]BasePlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "construct: packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/pluginmanager/BasePlugin;->mHostContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/pluginmanager/BasePlugin;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/freeme/pluginmanager/BasePlugin;->mHostContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/pluginmanager/BasePlugin;->mContext:Landroid/content/Context;

    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freeme/pluginmanager/BasePlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notifyOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/pluginmanager/BasePlugin;->onOrientationChanged(I)V

    return-void
.end method

.method protected onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method protected onRelease()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/pluginmanager/BasePlugin;->onRelease()V

    return-void
.end method
