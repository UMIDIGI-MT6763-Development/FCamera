.class public final Lcom/freeme/camera/data/LocalMediaData$PhotoData;
.super Lcom/freeme/camera/data/LocalMediaData;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/LocalMediaData$PhotoData$PhotoDataBuilder;
    }
.end annotation


# static fields
.field public static final COL_DATA:I = 0x5

.field public static final COL_DATE_MODIFIED:I = 0x4

.field public static final COL_DATE_TAKEN:I = 0x3

.field public static final COL_HEIGHT:I = 0x8

.field public static final COL_ID:I = 0x0

.field public static final COL_LATITUDE:I = 0xa

.field public static final COL_LONGITUDE:I = 0xb

.field public static final COL_MIME_TYPE:I = 0x2

.field public static final COL_ORIENTATION:I = 0x6

.field public static final COL_SIZE:I = 0x9

.field public static final COL_TITLE:I = 0x1

.field public static final COL_WIDTH:I = 0x7

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final MAXIMUM_TEXTURE_SIZE:I = 0x800

.field private static final QUERY_ORDER:Ljava/lang/String; = "_id DESC"

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final mSupportedDataActions:I = 0xe

.field private static final mSupportedUIActions:I = 0x4


# instance fields
.field private final mOrientation:I

.field private final mSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "mime_type"

    const-string v4, "datetaken"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "orientation"

    const-string v8, "width"

    const-string v9, "height"

    const-string v10, "_size"

    const-string v11, "latitude"

    const-string v12, "longitude"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V
    .locals 18

    move-object/from16 v14, p0

    move/from16 v15, p10

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move-wide/from16 v12, p13

    move-wide/from16 v14, p15

    move-wide/from16 v16, p17

    invoke-direct/range {v0 .. v17}, Lcom/freeme/camera/data/LocalMediaData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    move/from16 v1, p10

    iput v1, v0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mSignature:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$PhotoData;
    .locals 0

    invoke-static {p0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$PhotoData;

    move-result-object p0

    return-object p0
.end method

.method private static buildFromCursor(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$PhotoData;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v13, 0x8

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v2, :cond_1

    if-gtz v13, :cond_0

    goto :goto_0

    :cond_0
    move v14, v13

    move v13, v2

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v11, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_2

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_2

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v13, v1

    move v14, v2

    goto :goto_1

    :cond_2
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v13, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v14, v1

    :goto_1
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    new-instance v0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;

    move-object v2, v0

    invoke-direct/range {v2 .. v20}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V

    return-object v0

    :cond_5
    :goto_2
    return-object v2
.end method

.method public static fromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/freeme/camera/data/LocalData;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/data/LocalData;

    return-object p0
.end method

.method private loadImage(Landroid/content/Context;Landroid/widget/ImageView;IIIZ)V
    .locals 4

    if-lez p3, :cond_3

    if-gtz p4, :cond_0

    goto/16 :goto_1

    :cond_0
    mul-int v0, p4, p3

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    if-gt v1, v0, :cond_1

    const/4 p6, 0x1

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->getWidth()I

    move-result p6

    const/16 v0, 0x800

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result p6

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadUri(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadMediaStoreThumb(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/bumptech/glide/BitmapRequestBuilder;->thumbnail(Lcom/bumptech/glide/BitmapRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p3

    move p4, v0

    move v3, p6

    move-object p6, p3

    move p3, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadUri(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p6

    invoke-virtual {p6, p3, p4}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p6

    invoke-direct {p0, p1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadMediaStoreThumb(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->thumbnail(Lcom/bumptech/glide/BitmapRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p6

    :goto_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadUri(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/bumptech/glide/BitmapRequestBuilder;->thumbnail(Lcom/bumptech/glide/BitmapRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    sget-object p3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private loadMediaStoreThumb(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadUri(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    const/16 v0, 0x200

    const/16 v1, 0x180

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method private loadUri(Landroid/content/Context;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mMimeType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mDateModifiedInSeconds:J

    iget v5, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/RequestManager;->loadFromMediaStore(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    invoke-static {}, Lcom/freeme/camera/data/LocalMediaData;->access$300()Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapTypeRequest;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "J)",
            "Ljava/util/List<",
            "Lcom/freeme/camera/data/LocalData;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    new-instance v6, Lcom/freeme/camera/data/LocalMediaData$PhotoData$PhotoDataBuilder;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData$PhotoDataBuilder;-><init>(Lcom/freeme/camera/data/LocalMediaData$1;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v6}, Lcom/freeme/camera/data/LocalMediaData;->access$100(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JLjava/lang/String;Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mContentId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/freeme/camera/data/LocalMediaData;->delete(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/freeme/camera/data/LocalDataAdapter;Z)Landroid/widget/ImageView;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;IIIZ)V

    invoke-static {p0}, Lcom/freeme/camera/data/PanoramaMetadataLoader;->isPanorama(Lcom/freeme/camera/data/LocalData;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p0}, Lcom/freeme/camera/data/PanoramaMetadataLoader;->isPanorama360(Lcom/freeme/camera/data/LocalData;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/freeme/camera/data/PanoramaMetadataLoader;->isPanoramaAndUseViewer(Lcom/freeme/camera/data/LocalData;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0f0117

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/freeme/camera/data/RgbzMetadataLoader;->hasRGBZData(Lcom/freeme/camera/data/LocalData;)Z

    move-result p3

    if-eqz p3, :cond_2

    const p3, 0x7f0f0173

    goto :goto_1

    :cond_2
    const p3, 0x7f0f0114

    goto :goto_1

    :cond_3
    :goto_0
    const p3, 0x7f0f010e

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    iget-wide p6, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mDateModifiedInSeconds:J

    invoke-static {p6, p7}, Lcom/freeme/camera/data/LocalMediaData;->access$200(J)Ljava/lang/String;

    move-result-object p6

    aput-object p6, p4, p5

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getItemViewType()Lcom/freeme/camera/data/LocalDataViewType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/data/LocalDataViewType;->PHOTO:Lcom/freeme/camera/data/LocalDataViewType;

    return-object v0
.end method

.method public getLocalDataType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/freeme/camera/data/MediaDetails;
    .locals 2

    invoke-super {p0, p1}, Lcom/freeme/camera/data/LocalMediaData;->getMediaDetails(Landroid/content/Context;)Lcom/freeme/camera/data/MediaDetails;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freeme/camera/data/MediaDetails;->extractExifInfo(Lcom/freeme/camera/data/MediaDetails;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object p1
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mContentId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0xe

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUIActionSupported(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadFullImage(Landroid/content/Context;IILandroid/view/View;Lcom/freeme/camera/data/LocalDataAdapter;)V
    .locals 7

    move-object v2, p4

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;IIIZ)V

    return-void
.end method

.method public recycle(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freeme/camera/data/LocalMediaData;->recycle(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public refresh(Landroid/content/Context;)Lcom/freeme/camera/data/LocalData;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$PhotoData;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Photo:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->mDateTakenInMilliSeconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
