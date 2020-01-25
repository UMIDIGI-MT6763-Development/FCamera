.class Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;

    iget-object v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;->a:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;->onVideoImageListDidLoaded(Ljava/util/List;)V

    return-void
.end method
