.class public final Lcom/unity3d/player/k;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x6100

    sput v0, Lcom/unity3d/player/k;->c:I

    const/4 v0, -0x1

    sput v0, Lcom/unity3d/player/k;->d:I

    const/high16 v0, 0x800

    sput v0, Lcom/unity3d/player/k;->e:I

    const/high16 v0, 0x400

    sput v0, Lcom/unity3d/player/k;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;I)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p1, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/unity3d/player/k;->createSoftInputView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    sget-boolean v0, Lcom/unity3d/player/j;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/unity3d/player/k;->e:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/unity3d/player/k;->f:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const v0, 0x3f050001

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v0, 0x3f050002

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/k;->a(Landroid/widget/EditText;Ljava/lang/String;IZZZLjava/lang/String;I)V

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/unity3d/player/k$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k$1;-><init>(Lcom/unity3d/player/k;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private static a(IZZZ)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const v1, 0x8000

    move v2, v1

    :goto_0
    if-eqz p2, :cond_3

    const/high16 v1, 0x2

    :goto_1
    or-int/2addr v1, v2

    if-eqz p3, :cond_0

    const/16 v0, 0x80

    :cond_0
    or-int/2addr v0, v1

    if-ltz p0, :cond_1

    const/16 v1, 0xa

    if-le p0, v1, :cond_4

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/high16 v1, 0x8

    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aget v2, v1, p0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    aget v0, v1, p0

    goto :goto_2

    :cond_5
    aget v1, v1, p0

    or-int/2addr v0, v1

    goto :goto_2

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x40t 0x0t 0x0t
        0x2t 0x30t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x61t 0x20t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x21t 0x40t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a()Ljava/lang/String;
    .locals 1

    const v0, 0x3f050001

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/unity3d/player/k;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/EditText;Ljava/lang/String;IZZZLjava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unity3d/player/k;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    invoke-static {p3, p4, p5, p6}, Lcom/unity3d/player/k;->a(IZZZ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    if-lez p8, :cond_0

    new-array v0, v3, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setClickable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/k;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/k;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x3f050001

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x3f050001

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const v0, 0x3f050001

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected final createSoftInputView()Landroid/view/View;
    .locals 10

    const/16 v9, 0xf

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v7, -0x2

    const/16 v6, 0x10

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/unity3d/player/k;->d:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/unity3d/player/k$2;

    iget-object v2, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/unity3d/player/k$2;-><init>(Lcom/unity3d/player/k;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v3, 0x3f050002

    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x3f050001

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ok"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x3f050002

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v0, 0x3f050001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lcom/unity3d/player/k$3;

    invoke-direct {v2, p0}, Lcom/unity3d/player/k$3;-><init>(Lcom/unity3d/player/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    return-object v1
.end method

.method public final onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/unity3d/player/k;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/k;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/unity3d/player/k;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/k;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
