.class Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->extractImageList(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;->c:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;

    iput-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;->a:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;

    iput-object p3, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;->a:Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;

    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;->onVideoNewImageLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method
