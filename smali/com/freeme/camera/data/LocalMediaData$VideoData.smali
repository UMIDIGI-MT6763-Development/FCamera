.class public final Lcom/freeme/camera/data/LocalMediaData$VideoData;
.super Lcom/freeme/camera/data/LocalMediaData;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoData"
.end annotation


# static fields
.field public static final COL_DATA:I = 0x5

.field public static final COL_DATE_MODIFIED:I = 0x4

.field public static final COL_DATE_TAKEN:I = 0x3

.field public static final COL_DURATION:I = 0xb

.field public static final COL_HEIGHT:I = 0x7

.field public static final COL_ID:I = 0x0

.field public static final COL_LATITUDE:I = 0x9

.field public static final COL_LONGITUDE:I = 0xa

.field public static final COL_MIME_TYPE:I = 0x2

.field public static final COL_SIZE:I = 0x8

.field public static final COL_TITLE:I = 0x1

.field public static final COL_WIDTH:I = 0x6

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final QUERY_ORDER:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final mSupportedDataActions:I = 0xb

.field private static final mSupportedUIActions:I = 0x3


# instance fields
.field private final mDurationInSeconds:J

.field private final mSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "mime_type"

    const-string v4, "datetaken"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "_size"

    const-string v10, "latitude"

    const-string v11, "longitude"

    const-string v12, "duration"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V
    .locals 4

    move-object v0, p0

    invoke-direct/range {p0 .. p17}, Lcom/freeme/camera/data/LocalMediaData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mDurationInSeconds:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p7

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mSignature:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$800(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$VideoData;
    .locals 0

    invoke-static {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$VideoData;

    move-result-object p0

    return-object p0
.end method

.method private static buildFromCursor(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$VideoData;
    .locals 22

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

    move-result v2

    const/4 v12, 0x7

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v2, :cond_1

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    move v13, v12

    move v12, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move v13, v1

    move v12, v2

    :goto_1
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v20, 0x3e8

    div-long v20, v0, v20

    new-instance v0, Lcom/freeme/camera/data/LocalMediaData$VideoData;

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Lcom/freeme/camera/data/LocalMediaData$VideoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDDJ)V

    return-object v0
.end method

.method public static fromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/freeme/camera/data/LocalData;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;

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

.method private getBestHeight()I
    .locals 1

    invoke-static {p0}, Lcom/freeme/camera/data/VideoRotationMetadataLoader;->getHeight(Lcom/freeme/camera/data/LocalData;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mHeight:I

    return v0
.end method

.method private getBestWidth()I
    .locals 1

    invoke-static {p0}, Lcom/freeme/camera/data/VideoRotationMetadataLoader;->getWidth(Lcom/freeme/camera/data/LocalData;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mWidth:I

    return v0
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

    sget-object v2, Lcom/freeme/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v5, "datetaken DESC, _id DESC"

    new-instance v6, Lcom/freeme/camera/data/LocalMediaData$VideoDataBuilder;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/freeme/camera/data/LocalMediaData$VideoDataBuilder;-><init>(Lcom/freeme/camera/data/LocalMediaData$1;)V

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

    sget-object v1, Lcom/freeme/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mContentId:J

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
    .locals 6

    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mMimeType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mDateModifiedInSeconds:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/RequestManager;->loadFromMediaStore(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p6

    invoke-static {}, Lcom/freeme/camera/data/LocalMediaData;->access$300()Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-result-object p7

    invoke-virtual {p6, p7}, Lcom/bumptech/glide/BitmapTypeRequest;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p6

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mMimeType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mDateModifiedInSeconds:J

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/RequestManager;->loadFromMediaStore(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    invoke-static {}, Lcom/freeme/camera/data/LocalMediaData;->access$300()Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-result-object p7

    invoke-virtual {p1, p7}, Lcom/bumptech/glide/BitmapTypeRequest;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    const/16 p7, 0x200

    const/16 v0, 0x180

    invoke-virtual {p1, p7, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->thumbnail(Lcom/bumptech/glide/BitmapRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getHeight()I
    .locals 1

    invoke-static {p0}, Lcom/freeme/camera/data/VideoRotationMetadataLoader;->isRotated(Lcom/freeme/camera/data/LocalData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getBestWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getBestHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType()Lcom/freeme/camera/data/LocalDataViewType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/data/LocalDataViewType;->VIDEO:Lcom/freeme/camera/data/LocalDataViewType;

    return-object v0
.end method

.method public getLocalDataType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/freeme/camera/data/MediaDetails;
    .locals 3

    invoke-super {p0, p1}, Lcom/freeme/camera/data/LocalMediaData;->getMediaDetails(Landroid/content/Context;)Lcom/freeme/camera/data/MediaDetails;

    move-result-object v0

    iget-wide v1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mDurationInSeconds:J

    invoke-static {p1, v1, v2}, Lcom/freeme/camera/data/MediaDetails;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mContentId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;IIILcom/freeme/camera/data/LocalDataAdapter;ZLcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;
    .locals 11

    move-object v8, p0

    move-object v0, p2

    const v1, 0x7f09011e

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;

    move-object v10, v0

    move-object v9, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b004e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09011f

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getItemViewType()Lcom/freeme/camera/data/LocalDataViewType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/data/LocalDataViewType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f0901f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09015c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;

    invoke-direct {v4, v2, v3}, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v10, v0

    move-object v9, v4

    :goto_0
    invoke-static {v9}, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;->access$600(Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/freeme/camera/data/LocalDataAdapter;Z)Landroid/widget/ImageView;

    invoke-static {v9}, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;->access$700(Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;

    move-object/from16 v2, p8

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/data/LocalMediaData$VideoData$1;-><init>(Lcom/freeme/camera/data/LocalMediaData$VideoData;Lcom/freeme/camera/data/LocalData$ActionCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01bb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v8, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mDateModifiedInSeconds:J

    invoke-static {v4, v5}, Lcom/freeme/camera/data/LocalMediaData;->access$200(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v10
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-static {p0}, Lcom/freeme/camera/data/VideoRotationMetadataLoader;->isRotated(Lcom/freeme/camera/data/LocalData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getBestHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getBestWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0xb

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUIActionSupported(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public recycle(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/data/LocalMediaData;->recycle(Landroid/view/View;)V

    const v0, 0x7f09011e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;

    invoke-static {p1}, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;->access$600(Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    return-void
.end method

.method public refresh(Landroid/content/Context;)Lcom/freeme/camera/data/LocalData;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/data/LocalMediaData$VideoData;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$VideoData;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/freeme/camera/data/LocalMediaData$VideoData;->mDateTakenInMilliSeconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
