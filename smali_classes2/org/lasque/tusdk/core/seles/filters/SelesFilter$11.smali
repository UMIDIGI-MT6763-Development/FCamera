.class Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;IF)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;->d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;->a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iput p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;->b:I

    iput p4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;->a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;->b:I

    iget v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;->c:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
