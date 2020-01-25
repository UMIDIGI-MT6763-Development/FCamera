.class Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;
.super Ljava/lang/Object;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoViewHolder"
.end annotation


# instance fields
.field private final mPlayButton:Landroid/widget/ImageView;

.field private final mVideoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;->mVideoView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;->mPlayButton:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;->mVideoView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/data/LocalMediaData$VideoViewHolder;->mPlayButton:Landroid/widget/ImageView;

    return-object p0
.end method
