.class public Lorg/lasque/tusdk/core/TuSdkContext;
.super Ljava/lang/Object;


# static fields
.field public static final DEVICE_UUID:Ljava/lang/String; = "TUSDK_DeviceUUID"

.field public static final GLOBAL_UUID:Ljava/lang/String; = "TUSDK_GlobalUUID"

.field public static final SHARED_CACHE_KEY:Ljava/lang/String; = "TUSDK_Shared_Cache"

.field public static final SUFFIX:Ljava/lang/String; = "TUSDK_"

.field private static a:Lorg/lasque/tusdk/core/TuSdkContext;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    const-string v1, "TUSDK_Shared_Cache"

    invoke-direct {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/TuSdkContext;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->getResource(Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private a()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "%s.R"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->reflectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->c:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public static context()Landroid/content/Context;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static dip2px(F)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    float-to-int p0, p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static getAnima(I)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->getResAnima(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static getAnima(Ljava/lang/String;)Landroid/view/animation/Animation;
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getAnimaResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getAnima(I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimaResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->anim:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAppCacheDir(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->getAppCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getAppCacheDir(Z)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getAppCacheDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/AssetsHelper;->getAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetsFiles(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/AssetsHelper;->getAssetsFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/AssetsHelper;->getAssetsStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetsText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/AssetsHelper;->getAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttrResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->attr:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColor(I)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getColorResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColorResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->color:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimen(I)F
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResDimension(Landroid/content/Context;I)F

    move-result p0

    return p0
.end method

.method public static getDimen(Ljava/lang/String;)F
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDimenResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDimen(I)F

    move-result p0

    return p0
.end method

.method public static getDimenOffset(I)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResOffset(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getDimenOffset(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDimenResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDimenOffset(I)I

    move-result p0

    return p0
.end method

.method public static getDimenResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->dimen:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimenSize(I)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getDimenSize(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDimenResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDimenSize(I)I

    move-result p0

    return p0
.end method

.method public static getDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getDisplaySize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawableResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawableResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->drawable:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIDResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->id:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->layout:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMenuResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->menu:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getRawBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRawBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getRawResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getRawBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRawResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->raw:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getStringResId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getStringResId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->string:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->style:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleableResId(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/type/ResourceType;->styleable:Lorg/lasque/tusdk/core/type/ResourceType;

    invoke-direct {v0, v1, p0}, Lorg/lasque/tusdk/core/TuSdkContext;->a(Lorg/lasque/tusdk/core/type/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getWeekdayName(I)Ljava/lang/String;
    .locals 7

    const-string v0, "las_week_Sun"

    const-string v1, "las_week_Mon"

    const-string v2, "las_week_Tue"

    const-string v3, "las_week_Wed"

    const-string v4, "las_week_Thu"

    const-string v5, "las_week_Fri"

    const-string v6, "las_week_Sat"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasAssets(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/AssetsHelper;->hasAssets(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasAvailableExternal()Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->hasAvailableExternal(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)Lorg/lasque/tusdk/core/TuSdkContext;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/TuSdkContext;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/TuSdkContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    return-object p0
.end method

.method public static ins()Lorg/lasque/tusdk/core/TuSdkContext;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    return-object v0
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static loadMediaAsset(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper;->loadMediaAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static px2dip(F)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    float-to-int p0, p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->px2dip(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static px2sp(F)F
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->px2sp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkContext;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    return-object v0
.end method

.method public static sp2px(I)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->sp2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static sp2pxFloat(F)F
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdkContext;->a:Lorg/lasque/tusdk/core/TuSdkContext;

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->sp2pxFloat(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getResourceStyleContext(I)Landroid/view/ContextThemeWrapper;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResStyleContext(Landroid/content/Context;I)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public setResourceClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/TuSdkContext;->c:Ljava/lang/Class;

    return-void
.end method

.method public toast(I)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkContext;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
