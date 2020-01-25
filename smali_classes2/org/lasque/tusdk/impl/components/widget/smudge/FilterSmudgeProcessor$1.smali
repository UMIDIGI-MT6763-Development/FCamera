.class Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;Landroid/graphics/Bitmap;)V

    return-void
.end method
