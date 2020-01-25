.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->handleAutoAdjust()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->a(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;Landroid/graphics/Bitmap;)V

    return-void
.end method
