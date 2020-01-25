.class public Lcom/mediatek/plugin/res/JarResource;
.super Ljava/lang/Object;
.source "JarResource.java"

# interfaces
.implements Lcom/mediatek/plugin/res/IResource;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager/JarResource"


# instance fields
.field private mAssertManager:Landroid/content/res/AssetManager;

.field private mContext:Landroid/content/Context;

.field protected mFilePath:Ljava/lang/String;

.field protected mPackageProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/plugin/res/JarResource;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/plugin/res/JarResource;->mPackageProcessName:Ljava/lang/String;

    iput-object p1, p0, Lcom/mediatek/plugin/res/JarResource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/mediatek/plugin/res/JarResource;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssertManager()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/res/JarResource;->mAssertManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "PluginManager/JarResource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getDrawable> value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/plugin/res/JarResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "PluginManager/JarResource"

    const-string v1, "IOException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "PluginManager/JarResource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getString> value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
