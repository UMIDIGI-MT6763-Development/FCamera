.class Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$3;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$3;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$3;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->processedFilter(Landroid/graphics/Bitmap;)V

    return-void
.end method
