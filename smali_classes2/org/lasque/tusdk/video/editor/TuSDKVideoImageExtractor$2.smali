.class Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->asyncExtractImageList(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;

.field final synthetic b:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;->b:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;->a:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;->b:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;->a:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->extractImageList(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2$1;

    invoke-direct {v1, p0, v0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2$1;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;Ljava/util/List;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method
