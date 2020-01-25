.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->asyncLoadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;ZLorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;

.field final synthetic d:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->d:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    iput-object p3, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->c:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->d:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->loadDraftImage(Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->d:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
