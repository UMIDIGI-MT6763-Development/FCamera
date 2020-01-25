.class Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$1;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->init()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$1;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;Z)Z

    return-void
.end method
