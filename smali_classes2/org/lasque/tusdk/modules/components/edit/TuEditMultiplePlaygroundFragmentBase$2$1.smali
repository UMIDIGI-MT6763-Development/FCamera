.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->c:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->c:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;

    iget-object v1, v1, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;->onLoadingComplete(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
