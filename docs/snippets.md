# Howl shorthands

*Note: entries where the snippet prefix matches
equivalent C# source are not included.*

### Modifiers
|  #  | Sym | Syntax    | Prefix |
| :-: | :-: | ---       | ---     |
| 1 | ︲̑ | protected internal | pri |
| 2 | ‒̥ | public static | ps |
| 3 | ◠̥ | protected static | prs |
| 4 | ︲̥ | internal static | is |
| 5 | ︲̥̑ | protected internal static | pris |
| 6 | ▰̥ | private static | pvs |

### Control flow
|  #  | Sym | Syntax    | Prefix |
| :-: | :-: | ---       | ---     |
| 7 | ⤳ | else if | elif |
| 8 | ㆑ | return true; | tt |
| 9 | ⤬ | return false; | ff |
| 10 | ⏂ | return null; | nn |
| 11 | ⟾ | yield return | yr |
| 12 | ⤇ | yield break; | yb |
| 13 | ⟆ | yield return null; | yy |

### Operators
|  #  | Sym | Syntax    | Prefix |
| :-: | :-: | ---       | ---     |
| 14 | ⒠ | public static explicit operator | explicit |
| 15 | ⒤ | public static implicit operator | implicit |
| 16 | ⒜ | Action | act |

### Idioms
|  #  | Sym | Syntax    | Prefix |
| :-: | :-: | ---       | ---     |
| 17 | 【 | (this, | xargs |

### NUnit
|  #  | Sym | Syntax    | Prefix |
| :-: | :-: | ---       | ---     |
| 18 | ؟ | [Test] public void | test |
| 19 | ⍜ | [SetUp] public void | setup |
| 20 | ⍉ | [TearDown] public void | teardown |

### Unity
|  #  | Sym | Syntax    | Prefix |
| :-: | :-: | ---       | ---     |
| 21 | み | transform | tra |
| 22 | ˙ | .transform.position | position |
| 23 | ⁰ | .transform.rotation | rotation |
| 24 | ˢ | .transform.lossyScale | lossyscale |
| 25 | フ | Vector2 | v2 |
| 26 | タ | Vector4 | v4 |
| 27 | ト | Vector2 | p2 |
| 28 | メ | Vector3 | point3 |
| 29 | メ̂ | Vector4 | p4 |
| 30 | ⒯ | Time.time | time |
| 31 | 𝛿𝚝 | Time.deltaTime | deltatime |
| 32 | ∠ʳ | Mathf.Deg2Rad | radians |
| 33 | ∠° | Mathf.Rad2Deg | degrees |
| 34 | 《 | gameObject.AddComponent< | addcomponent |
| 35 | ⧼ | GetComponent< | getcomponent |
| 36 | ⏚ | [UnityTest] public IEnumerator | utest |
| 37 | ⒪ | if (Skip()) yield break; | opt |
| 38 | ⏰ | yield return new WaitForSeconds | yieldsec |
| 39 | 🍥 | That.Logger.Log | log |
| 40 | 🔺 | That.Logger.Err | err |
| 41 | 🔸 | That.Logger.Warn | warn |

### Active Logic
|  #  | Sym | Syntax    | Prefix |
| :-: | :-: | ---       | ---     |
| 42 | ◇̠ | return done(); | dd |
| 43 | ☡̱ | return cont(); | cc |
| 44 | ■̠ | return fail(); | fa |
| 45 | ⌽ | return @void(); | vvv |
| 46 | ⓧ̱ | return @false(); | fff |
| 47 | 𝟾̱ | return loop.cont(); | lcc |
| 48 | ◇̠ʾ | return pending.done(); | pdd |
| 49 | ☡̱ʾ | return pending.cont(); | pcc |
| 50 | ☡̱ʿ | return impending.cont(); | icc |
| 51 | ■̠ʿ | return impending.fail(); | iff |
| 52 | • | => ε( | sx |
| 53 | ⎨ | [log && $" | nt |
| 54 | ⟦ | % @do?[ | task |
| 55 | ⸨ | While( | drive |
