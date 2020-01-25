.class Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->startImageMarkFaceAnalysis(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-static {v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->b(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;->b:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-static {v2}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->analysisWithThumb(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;)V

    return-void
.end method
