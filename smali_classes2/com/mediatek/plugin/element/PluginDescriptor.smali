.class public Lcom/mediatek/plugin/element/PluginDescriptor;
.super Lcom/mediatek/plugin/element/Element;
.source "PluginDescriptor.java"


# instance fields
.field public className:Ljava/lang/String;

.field private mArchivePath:Ljava/lang/String;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mInfo:Landroid/content/pm/PackageInfo;

.field private mRequiredPluginDescriptor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/PluginDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field public name:Ljava/lang/String;

.field public requireMaxHostVersion:I

.field public requireMinHostVersion:I

.field public requiredPluginIds:[Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/plugin/element/Element;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMaxHostVersion:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMinHostVersion:I

    return-void
.end method


# virtual methods
.method public getArchivePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mArchivePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getExtension()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mChilds:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/plugin/element/Extension;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getExtensionPoints()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/ExtensionPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mChilds:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getRequirePluginDes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/PluginDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mRequiredPluginDescriptor:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public printAllKeyValue(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mediatek/plugin/element/Element;->printAllKeyValue(Ljava/lang/String;)V

    const-string v0, "name"

    iget-object v1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    iget v1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->version:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requireMaxHostVersion"

    iget v1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMaxHostVersion:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requireMinHostVersion"

    iget v1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMinHostVersion:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "className"

    iget-object v1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->className:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->requiredPluginIds:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v2, "requiredPluginIds size "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requiredPluginIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->requiredPluginIds:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "requiredPluginIds size "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "mArchivePath"

    iget-object v1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mArchivePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setArchivePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mArchivePath:Ljava/lang/String;

    return-void
.end method

.method public setAssetManager(Landroid/content/res/AssetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mAssetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public setRequirePluginDes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/PluginDescriptor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mRequiredPluginDescriptor:Ljava/util/HashMap;

    return-void
.end method

.method public setResource(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/element/PluginDescriptor;->mResources:Landroid/content/res/Resources;

    return-void
.end method
