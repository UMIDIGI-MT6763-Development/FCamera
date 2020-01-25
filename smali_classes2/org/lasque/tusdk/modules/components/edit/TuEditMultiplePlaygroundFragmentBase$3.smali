.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->handleAutoAdjust()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->loadDraftImage(Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->a(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;Landroid/graphics/Bitmap;)V

    return-void
.end method
