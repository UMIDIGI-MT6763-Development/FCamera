.class public Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteDataFrame"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public trackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
