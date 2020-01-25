.class Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInteger(IILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;II)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;->d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;->a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iput p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;->b:I

    iput p4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;->a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;->b:I

    iget v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
