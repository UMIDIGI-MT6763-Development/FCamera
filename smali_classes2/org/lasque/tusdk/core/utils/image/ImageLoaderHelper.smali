.class public Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCache()V
    .locals 0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->clearDiskCache()V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->clearMemoryCache()V

    return-void
.end method

.method public static clearDiskCache()V
    .locals 1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    return-void
.end method

.method public static clearMemoryCache()V
    .locals 1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->loadDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static initImageCache(Landroid/content/Context;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 5

    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "imageCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper;->appMemoryBit()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    long-to-int v1, v1

    const/high16 v2, 0x1a0000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v2, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v4, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;

    invoke-direct {v1, v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    const/high16 v0, 0xc800000

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p0

    new-instance p1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDecoder(Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object p0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method public static loadDiscBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->loadDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/DiskCacheUtils;->findInCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static loadMemoryBitmap(Ljava/lang/String;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v2, v3, p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-static {p0, v2}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-static {p0, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->findCachedBitmapsForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/DiskCacheUtils;->removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Z

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)V

    return-void
.end method

.method public static remove(Ljava/lang/String;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/DiskCacheUtils;->removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-direct {v0, v1, p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public static save(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->save(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static save(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->save(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    return-void
.end method

.method public static save(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 0

    invoke-static {p0, p1, p3}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->saveToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->saveToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public static saveToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmapAsPNG(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static saveToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v1, v2, p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    :goto_0
    invoke-static {p0, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_3
    :goto_1
    return-void
.end method
