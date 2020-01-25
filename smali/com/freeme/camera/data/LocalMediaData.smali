.class public abstract Lcom/freeme/camera/data/LocalMediaData;
.super Ljava/lang/Object;
.source "LocalMediaData.java"

# interfaces
.implements Lcom/freeme/camera/data/LocalData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;,
        Lcom/freeme/camera/data/LocalMediaData$VideoDataBuilder;,
        Lcom/freeme/camera/data/LocalMediaData$VideoData;,
        Lcom/freeme/camera/data/LocalMediaData$PhotoData;,
        Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;
    }
.end annotation


# static fields
.field private static final CAMERA_PATH:Ljava/lang/String;

.field private static final JPEG_COMPRESS_QUALITY:I = 0x64

.field private static final JPEG_ENCODER:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private static final MEDIASTORE_THUMB_HEIGHT:I = 0x180

.field private static final MEDIASTORE_THUMB_WIDTH:I = 0x200

.field public static final QUERY_ALL_MEDIA_ID:I = -0x1

.field private static final SELECT_BY_PATH:Ljava/lang/String; = "_data LIKE ?"


# instance fields
.field private mCameraExt:Lcom/freeme/camera/ICameraExt;

.field protected final mContentId:J

.field protected final mDateModifiedInSeconds:J

.field protected final mDateTakenInMilliSeconds:J

.field protected final mHeight:I

.field protected final mLatitude:D

.field protected final mLongitude:D

.field protected final mMetaData:Landroid/os/Bundle;

.field protected final mMimeType:Ljava/lang/String;

.field protected final mPath:Ljava/lang/String;

.field protected final mSizeInBytes:J

.field protected final mTitle:Ljava/lang/String;

.field protected mUsing:Ljava/lang/Boolean;

.field protected final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/freeme/camera/common/utils/StorageUtil;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/data/LocalMediaData;->CAMERA_PATH:Ljava/lang/String;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v0, Lcom/freeme/camera/data/LocalMediaData;->JPEG_ENCODER:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    move-wide v1, p1

    iput-wide v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mContentId:J

    move-object v1, p3

    iput-object v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mTitle:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mMimeType:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mDateTakenInMilliSeconds:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    move-object v1, p9

    iput-object v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    move v1, p10

    iput v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mWidth:I

    move v1, p11

    iput v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mHeight:I

    move-wide v1, p12

    iput-wide v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mSizeInBytes:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mLatitude:D

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mLongitude:D

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/freeme/camera/data/LocalMediaData;->mMetaData:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JLjava/lang/String;Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;)Ljava/util/List;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/freeme/camera/data/LocalMediaData;->queryLocalMediaData(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JLjava/lang/String;Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/freeme/camera/data/LocalMediaData;->getReadableDate(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    .locals 1

    sget-object v0, Lcom/freeme/camera/data/LocalMediaData;->JPEG_ENCODER:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method

.method private static getReadableDate(J)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static queryLocalMediaData(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JLjava/lang/String;Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;",
            ")",
            "Ljava/util/List<",
            "Lcom/freeme/camera/data/LocalData;",
            ">;"
        }
    .end annotation

    const-string v3, "_data LIKE ? AND _id > ?"

    const/4 p3, 0x2

    new-array p4, p3, [Ljava/lang/String;

    sget-object v0, Lcom/freeme/camera/data/LocalMediaData;->CAMERA_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p4, v2

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DCIM/Camera%"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/String;

    aput-object p4, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    move-object v4, p3

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    const/4 p3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p6, p0}, Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;->build(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalData;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p2, "_data"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_4

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-object p1, p3

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p0, p3

    :goto_3
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1

    :catch_1
    move-object p0, p3

    move-object p1, p0

    :catch_2
    :goto_4
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    :goto_5
    return-object p1
.end method


# virtual methods
.method public canSwipeInFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Landroid/content/Context;)Z
    .locals 1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method protected fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/freeme/camera/data/LocalDataAdapter;Z)Landroid/widget/ImageView;
    .locals 6

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mMimeType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/freeme/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/RequestManager;->loadFromMediaStore(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-wide p4, p0, Lcom/freeme/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    invoke-static {p4, p5}, Lcom/freeme/camera/data/LocalMediaData;->getReadableDate(J)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    const p4, 0x7f0f00fa

    invoke-virtual {p1, p4, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getContentId()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mContentId:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mDateTakenInMilliSeconds:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mHeight:I

    return v0
.end method

.method public getLatLong()[D
    .locals 4

    iget-wide v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mLatitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mLatitude:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mLongitude:D

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/freeme/camera/data/MediaDetails;
    .locals 7

    new-instance p1, Lcom/freeme/camera/data/MediaDetails;

    invoke-direct {p1}, Lcom/freeme/camera/data/MediaDetails;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mTitle:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-virtual {p1, v2, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    invoke-static {v2, v3}, Lcom/freeme/camera/data/LocalMediaData;->getReadableDate(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mSizeInBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mLatitude:D

    iget-wide v4, p0, Lcom/freeme/camera/data/LocalMediaData;->mLongitude:D

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/freeme/camera/data/MediaDetails;->setLocation(DD)V

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mLatitude:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData;->mLongitude:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "%f, %f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/freeme/camera/data/LocalMediaData;->mLatitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    iget-wide v4, p0, Lcom/freeme/camera/data/LocalMediaData;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSizeInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mSizeInBytes:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;IIILcom/freeme/camera/data/LocalDataAdapter;ZLcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09011f

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData;->getItemViewType()Lcom/freeme/camera/data/LocalDataViewType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/data/LocalDataViewType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    move-object v5, v0

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/freeme/camera/data/LocalMediaData;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/freeme/camera/data/LocalDataAdapter;Z)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public abstract getViewType()I
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mWidth:I

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMetadataUpdated()Z
    .locals 1

    invoke-static {p0}, Lcom/freeme/camera/data/MetadataLoader;->isMetadataCached(Lcom/freeme/camera/data/LocalData;)Z

    move-result v0

    return v0
.end method

.method public isUIActionSupported(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isUsing()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadFullImage(Landroid/content/Context;IILandroid/view/View;Lcom/freeme/camera/data/LocalDataAdapter;)V
    .locals 0

    return-void
.end method

.method public onFullScreen(Z)V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recycle(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
