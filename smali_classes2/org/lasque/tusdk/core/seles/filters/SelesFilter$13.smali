.class Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setSize(Lorg/lasque/tusdk/core/struct/TuSdkSizeF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

.field final synthetic b:I

.field final synthetic c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;->c:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;->a:Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    iput p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;->a:Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;->a:Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;->b:I

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method
