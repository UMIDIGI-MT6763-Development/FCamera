.class Lcom/freeme/camera/data/LocalMediaData$VideoDataBuilder;
.super Ljava/lang/Object;
.source "LocalMediaData.java"

# interfaces
.implements Lcom/freeme/camera/data/LocalMediaData$CursorToLocalData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoDataBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/data/LocalMediaData$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/data/LocalMediaData$VideoDataBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalData;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/data/LocalMediaData$VideoDataBuilder;->build(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$VideoData;

    move-result-object p1

    return-object p1
.end method

.method public build(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$VideoData;
    .locals 0

    invoke-static {p1}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->access$800(Landroid/database/Cursor;)Lcom/freeme/camera/data/LocalMediaData$VideoData;

    move-result-object p1

    return-object p1
.end method
