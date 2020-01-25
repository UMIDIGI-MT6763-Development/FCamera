.class Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$2;->b:Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$2;->b:Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$2;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->b(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
