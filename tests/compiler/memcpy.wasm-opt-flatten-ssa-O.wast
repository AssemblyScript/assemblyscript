(module
 (type $0 (func (param i32 i32 i32) (result i32)))
 (type $1 (func))
 (global $global$0 (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memcpy" (func $0))
 (export "memory" (memory $0))
 (start $1)
 (func $0 (; 0 ;) (type $0) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (result i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (local $var$6 i32)
  (local $var$7 i32)
  (local $var$8 i32)
  (local $var$9 i32)
  (local $var$10 i32)
  (local $var$11 i32)
  (local $var$12 i32)
  (local $var$13 i32)
  (local $var$14 i32)
  (local $var$15 i32)
  (local $var$16 i32)
  (local $var$17 i32)
  (local $var$18 i32)
  (local $var$19 i32)
  (local $var$20 i32)
  (local $var$21 i32)
  (local $var$22 i32)
  (local $var$23 i32)
  (local $var$24 i32)
  (local $var$25 i32)
  (local $var$26 i32)
  (local $var$27 i32)
  (local $var$28 i32)
  (local $var$29 i32)
  (local $var$30 i32)
  (local $var$31 i32)
  (local $var$32 i32)
  (local $var$33 i32)
  (local $var$34 i32)
  (local $var$35 i32)
  (local $var$36 i32)
  (local $var$37 i32)
  (local $var$38 i32)
  (local $var$39 i32)
  (set_local $var$23
   (get_local $var$2)
  )
  (set_local $var$16
   (get_local $var$2)
  )
  (set_local $var$30
   (get_local $var$2)
  )
  (set_local $var$31
   (get_local $var$2)
  )
  (set_local $var$32
   (get_local $var$2)
  )
  (set_local $var$33
   (get_local $var$2)
  )
  (set_local $var$34
   (get_local $var$2)
  )
  (set_local $var$35
   (get_local $var$2)
  )
  (set_local $var$36
   (get_local $var$2)
  )
  (set_local $var$37
   (get_local $var$2)
  )
  (set_local $var$38
   (get_local $var$2)
  )
  (set_local $var$39
   (get_local $var$2)
  )
  (set_local $var$11
   (get_local $var$2)
  )
  (set_local $var$19
   (get_local $var$2)
  )
  (set_local $var$20
   (get_local $var$2)
  )
  (set_local $var$21
   (get_local $var$2)
  )
  (set_local $var$22
   (get_local $var$2)
  )
  (set_local $var$6
   (tee_local $var$5
    (tee_local $var$9
     (tee_local $var$13
      (tee_local $var$17
       (tee_local $var$2
        (tee_local $var$25
         (tee_local $var$24
          (tee_local $var$28
           (tee_local $var$12
            (tee_local $var$4
             (get_local $var$0)
            )
           )
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (set_local $var$8
   (tee_local $var$7
    (tee_local $var$10
     (tee_local $var$15
      (tee_local $var$18
       (tee_local $var$1
        (tee_local $var$27
         (tee_local $var$26
          (tee_local $var$29
           (tee_local $var$14
            (tee_local $var$3
             (get_local $var$1)
            )
           )
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (loop $label$1
   (if
    (get_local $var$23)
    (set_local $var$23
     (i32.rem_s
      (get_local $var$3)
      (i32.const 4)
     )
    )
   )
   (if
    (get_local $var$23)
    (block
     (set_local $var$6
      (tee_local $var$5
       (tee_local $var$9
        (tee_local $var$13
         (tee_local $var$17
          (tee_local $var$2
           (tee_local $var$25
            (tee_local $var$24
             (tee_local $var$28
              (tee_local $var$12
               (tee_local $var$4
                (i32.add
                 (tee_local $var$23
                  (get_local $var$4)
                 )
                 (i32.const 1)
                )
               )
              )
             )
            )
           )
          )
         )
        )
       )
      )
     )
     (set_local $var$8
      (tee_local $var$7
       (tee_local $var$10
        (tee_local $var$15
         (tee_local $var$18
          (tee_local $var$1
           (tee_local $var$27
            (tee_local $var$26
             (tee_local $var$29
              (tee_local $var$14
               (tee_local $var$3
                (i32.add
                 (tee_local $var$11
                  (get_local $var$3)
                 )
                 (i32.const 1)
                )
               )
              )
             )
            )
           )
          )
         )
        )
       )
      )
     )
     (i32.store8
      (get_local $var$23)
      (i32.load8_u
       (get_local $var$11)
      )
     )
     (set_local $var$22
      (tee_local $var$21
       (tee_local $var$20
        (tee_local $var$19
         (tee_local $var$11
          (tee_local $var$39
           (tee_local $var$38
            (tee_local $var$37
             (tee_local $var$36
              (tee_local $var$35
               (tee_local $var$34
                (tee_local $var$33
                 (tee_local $var$32
                  (tee_local $var$31
                   (tee_local $var$30
                    (tee_local $var$16
                     (tee_local $var$23
                      (i32.sub
                       (get_local $var$16)
                       (i32.const 1)
                      )
                     )
                    )
                   )
                  )
                 )
                )
               )
              )
             )
            )
           )
          )
         )
        )
       )
      )
     )
     (br $label$1)
    )
   )
  )
  (if
   (i32.eqz
    (i32.rem_s
     (get_local $var$4)
     (i32.const 4)
    )
   )
   (block
    (loop $label$5
     (if
      (i32.ge_s
       (get_local $var$30)
       (i32.const 16)
      )
      (block
       (i32.store
        (get_local $var$12)
        (i32.load
         (get_local $var$14)
        )
       )
       (i32.store
        (i32.add
         (get_local $var$12)
         (i32.const 4)
        )
        (i32.load
         (i32.add
          (get_local $var$14)
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $var$12)
         (i32.const 8)
        )
        (i32.load
         (i32.add
          (get_local $var$14)
          (i32.const 8)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $var$12)
         (i32.const 12)
        )
        (i32.load
         (i32.add
          (get_local $var$14)
          (i32.const 12)
         )
        )
       )
       (set_local $var$27
        (tee_local $var$26
         (tee_local $var$29
          (tee_local $var$14
           (i32.add
            (get_local $var$14)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $var$25
        (tee_local $var$24
         (tee_local $var$28
          (tee_local $var$12
           (i32.add
            (get_local $var$12)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $var$35
        (tee_local $var$34
         (tee_local $var$33
          (tee_local $var$32
           (tee_local $var$31
            (tee_local $var$30
             (i32.sub
              (get_local $var$31)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (br $label$5)
      )
     )
    )
    (if
     (i32.and
      (get_local $var$32)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $var$12)
       (i32.load
        (get_local $var$14)
       )
      )
      (i32.store
       (i32.add
        (get_local $var$12)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $var$14)
         (i32.const 4)
        )
       )
      )
      (set_local $var$25
       (tee_local $var$24
        (tee_local $var$28
         (i32.add
          (get_local $var$12)
          (i32.const 8)
         )
        )
       )
      )
      (set_local $var$27
       (tee_local $var$26
        (tee_local $var$29
         (i32.add
          (get_local $var$14)
          (i32.const 8)
         )
        )
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $var$33)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $var$28)
       (i32.load
        (get_local $var$29)
       )
      )
      (set_local $var$25
       (tee_local $var$24
        (i32.add
         (get_local $var$28)
         (i32.const 4)
        )
       )
      )
      (set_local $var$27
       (tee_local $var$26
        (i32.add
         (get_local $var$29)
         (i32.const 4)
        )
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $var$34)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $var$24)
       (i32.load16_u
        (get_local $var$26)
       )
      )
      (set_local $var$25
       (i32.add
        (get_local $var$24)
        (i32.const 2)
       )
      )
      (set_local $var$27
       (i32.add
        (get_local $var$26)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $var$35)
      (i32.const 1)
     )
     (i32.store8
      (get_local $var$25)
      (i32.load8_u
       (get_local $var$27)
      )
     )
    )
    (return
     (get_local $var$0)
    )
   )
  )
  (if
   (i32.ge_s
    (get_local $var$36)
    (i32.const 32)
   )
   (block $label$12
    (block $label$13
     (block $label$14
      (if
       (i32.ne
        (tee_local $var$4
         (i32.rem_s
          (get_local $var$2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $label$14
         (i32.eq
          (get_local $var$4)
          (i32.const 2)
         )
        )
        (br_if $label$13
         (i32.eq
          (get_local $var$4)
          (i32.const 3)
         )
        )
        (br $label$12)
       )
      )
      (set_local $var$3
       (i32.load
        (get_local $var$1)
       )
      )
      (i32.store8
       (get_local $var$2)
       (i32.load8_u
        (get_local $var$1)
       )
      )
      (i32.store8
       (tee_local $var$2
        (i32.add
         (get_local $var$2)
         (i32.const 1)
        )
       )
       (i32.load8_u
        (tee_local $var$4
         (i32.add
          (get_local $var$1)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $var$6
       (tee_local $var$5
        (tee_local $var$9
         (tee_local $var$13
          (tee_local $var$17
           (tee_local $var$1
            (i32.add
             (tee_local $var$16
              (i32.add
               (get_local $var$2)
               (i32.const 1)
              )
             )
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
      (set_local $var$8
       (tee_local $var$7
        (tee_local $var$10
         (tee_local $var$15
          (tee_local $var$18
           (tee_local $var$2
            (i32.add
             (tee_local $var$4
              (i32.add
               (get_local $var$4)
               (i32.const 1)
              )
             )
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
      (i32.store8
       (get_local $var$16)
       (i32.load8_u
        (get_local $var$4)
       )
      )
      (set_local $var$22
       (tee_local $var$21
        (tee_local $var$20
         (tee_local $var$19
          (tee_local $var$11
           (tee_local $var$4
            (i32.sub
             (get_local $var$37)
             (i32.const 3)
            )
           )
          )
         )
        )
       )
      )
      (loop $label$16
       (if
        (i32.ge_s
         (get_local $var$4)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $var$1)
          (i32.or
           (i32.shr_u
            (get_local $var$3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $var$3
             (i32.load
              (i32.add
               (get_local $var$2)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $var$1)
           (i32.const 4)
          )
          (i32.or
           (i32.shr_u
            (get_local $var$3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $var$3
             (i32.load
              (i32.add
               (get_local $var$2)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $var$1)
           (i32.const 8)
          )
          (i32.or
           (i32.shr_u
            (get_local $var$3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $var$3
             (i32.load
              (i32.add
               (get_local $var$2)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $var$1)
           (i32.const 12)
          )
          (i32.or
           (i32.shr_u
            (get_local $var$3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $var$3
             (i32.load
              (i32.add
               (get_local $var$2)
               (i32.const 13)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (set_local $var$8
          (tee_local $var$7
           (tee_local $var$10
            (tee_local $var$15
             (tee_local $var$18
              (tee_local $var$2
               (i32.add
                (get_local $var$2)
                (i32.const 16)
               )
              )
             )
            )
           )
          )
         )
         (set_local $var$6
          (tee_local $var$5
           (tee_local $var$9
            (tee_local $var$13
             (tee_local $var$17
              (tee_local $var$1
               (i32.add
                (get_local $var$1)
                (i32.const 16)
               )
              )
             )
            )
           )
          )
         )
         (set_local $var$22
          (tee_local $var$21
           (tee_local $var$20
            (tee_local $var$19
             (tee_local $var$11
              (tee_local $var$4
               (i32.sub
                (get_local $var$4)
                (i32.const 16)
               )
              )
             )
            )
           )
          )
         )
         (br $label$16)
        )
       )
      )
      (br $label$12)
     )
     (set_local $var$3
      (i32.load
       (get_local $var$1)
      )
     )
     (i32.store8
      (get_local $var$2)
      (i32.load8_u
       (get_local $var$1)
      )
     )
     (set_local $var$6
      (tee_local $var$5
       (tee_local $var$9
        (tee_local $var$13
         (tee_local $var$17
          (tee_local $var$2
           (i32.add
            (tee_local $var$4
             (i32.add
              (get_local $var$2)
              (i32.const 1)
             )
            )
            (i32.const 1)
           )
          )
         )
        )
       )
      )
     )
     (set_local $var$8
      (tee_local $var$7
       (tee_local $var$10
        (tee_local $var$15
         (tee_local $var$18
          (tee_local $var$1
           (i32.add
            (tee_local $var$16
             (i32.add
              (get_local $var$1)
              (i32.const 1)
             )
            )
            (i32.const 1)
           )
          )
         )
        )
       )
      )
     )
     (i32.store8
      (get_local $var$4)
      (i32.load8_u
       (get_local $var$16)
      )
     )
     (set_local $var$22
      (tee_local $var$21
       (tee_local $var$20
        (tee_local $var$19
         (tee_local $var$11
          (tee_local $var$4
           (i32.sub
            (get_local $var$38)
            (i32.const 2)
           )
          )
         )
        )
       )
      )
     )
     (loop $label$18
      (if
       (i32.ge_s
        (get_local $var$4)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $var$2)
         (i32.or
          (i32.shr_u
           (get_local $var$3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $var$3
            (i32.load
             (i32.add
              (get_local $var$1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $var$2)
          (i32.const 4)
         )
         (i32.or
          (i32.shr_u
           (get_local $var$3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $var$3
            (i32.load
             (i32.add
              (get_local $var$1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $var$2)
          (i32.const 8)
         )
         (i32.or
          (i32.shr_u
           (get_local $var$3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $var$3
            (i32.load
             (i32.add
              (get_local $var$1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $var$2)
          (i32.const 12)
         )
         (i32.or
          (i32.shr_u
           (get_local $var$3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $var$3
            (i32.load
             (i32.add
              (get_local $var$1)
              (i32.const 14)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (set_local $var$8
         (tee_local $var$7
          (tee_local $var$10
           (tee_local $var$15
            (tee_local $var$18
             (tee_local $var$1
              (i32.add
               (get_local $var$1)
               (i32.const 16)
              )
             )
            )
           )
          )
         )
        )
        (set_local $var$6
         (tee_local $var$5
          (tee_local $var$9
           (tee_local $var$13
            (tee_local $var$17
             (tee_local $var$2
              (i32.add
               (get_local $var$2)
               (i32.const 16)
              )
             )
            )
           )
          )
         )
        )
        (set_local $var$22
         (tee_local $var$21
          (tee_local $var$20
           (tee_local $var$19
            (tee_local $var$11
             (tee_local $var$4
              (i32.sub
               (get_local $var$4)
               (i32.const 16)
              )
             )
            )
           )
          )
         )
        )
        (br $label$18)
       )
      )
     )
     (br $label$12)
    )
    (set_local $var$16
     (i32.load
      (get_local $var$1)
     )
    )
    (set_local $var$6
     (tee_local $var$5
      (tee_local $var$9
       (tee_local $var$13
        (tee_local $var$17
         (tee_local $var$4
          (i32.add
           (get_local $var$2)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (set_local $var$8
     (tee_local $var$7
      (tee_local $var$10
       (tee_local $var$15
        (tee_local $var$18
         (tee_local $var$3
          (i32.add
           (get_local $var$1)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (i32.store8
     (get_local $var$2)
     (i32.load8_u
      (get_local $var$1)
     )
    )
    (set_local $var$22
     (tee_local $var$21
      (tee_local $var$20
       (tee_local $var$19
        (tee_local $var$11
         (tee_local $var$1
          (i32.sub
           (get_local $var$39)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
    )
    (loop $label$20
     (if
      (i32.ge_s
       (get_local $var$1)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $var$4)
        (i32.or
         (i32.shr_u
          (get_local $var$16)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $var$2
           (i32.load
            (i32.add
             (get_local $var$3)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $var$4)
         (i32.const 4)
        )
        (i32.or
         (i32.shr_u
          (get_local $var$2)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $var$2
           (i32.load
            (i32.add
             (get_local $var$3)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $var$4)
         (i32.const 8)
        )
        (i32.or
         (i32.shr_u
          (get_local $var$2)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $var$2
           (i32.load
            (i32.add
             (get_local $var$3)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $var$4)
         (i32.const 12)
        )
        (i32.or
         (i32.shr_u
          (get_local $var$2)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $var$16
           (i32.load
            (i32.add
             (get_local $var$3)
             (i32.const 15)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (set_local $var$8
        (tee_local $var$7
         (tee_local $var$10
          (tee_local $var$15
           (tee_local $var$18
            (tee_local $var$3
             (i32.add
              (get_local $var$3)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (set_local $var$6
        (tee_local $var$5
         (tee_local $var$9
          (tee_local $var$13
           (tee_local $var$17
            (tee_local $var$4
             (i32.add
              (get_local $var$4)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (set_local $var$22
        (tee_local $var$21
         (tee_local $var$20
          (tee_local $var$19
           (tee_local $var$11
            (tee_local $var$1
             (i32.sub
              (get_local $var$1)
              (i32.const 16)
             )
            )
           )
          )
         )
        )
       )
       (br $label$20)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $var$11)
    (i32.const 16)
   )
   (block
    (i32.store8
     (get_local $var$17)
     (i32.load8_u
      (get_local $var$18)
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$17)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$18)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $var$6
     (tee_local $var$5
      (tee_local $var$9
       (tee_local $var$13
        (i32.add
         (tee_local $var$1
          (i32.add
           (get_local $var$1)
           (i32.const 1)
          )
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (set_local $var$8
     (tee_local $var$7
      (tee_local $var$10
       (tee_local $var$15
        (i32.add
         (tee_local $var$2
          (i32.add
           (get_local $var$2)
           (i32.const 1)
          )
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (i32.store8
     (get_local $var$1)
     (i32.load8_u
      (get_local $var$2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $var$19)
    (i32.const 8)
   )
   (block
    (i32.store8
     (get_local $var$13)
     (i32.load8_u
      (get_local $var$15)
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$13)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$15)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $var$6
     (tee_local $var$5
      (tee_local $var$9
       (i32.add
        (tee_local $var$1
         (i32.add
          (get_local $var$1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
     )
    )
    (set_local $var$8
     (tee_local $var$7
      (tee_local $var$10
       (i32.add
        (tee_local $var$2
         (i32.add
          (get_local $var$2)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (get_local $var$1)
     (i32.load8_u
      (get_local $var$2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $var$20)
    (i32.const 4)
   )
   (block
    (i32.store8
     (get_local $var$9)
     (i32.load8_u
      (get_local $var$10)
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$9)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$10)
        (i32.const 1)
       )
      )
     )
    )
    (i32.store8
     (tee_local $var$1
      (i32.add
       (get_local $var$1)
       (i32.const 1)
      )
     )
     (i32.load8_u
      (tee_local $var$2
       (i32.add
        (get_local $var$2)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $var$6
     (tee_local $var$5
      (i32.add
       (tee_local $var$1
        (i32.add
         (get_local $var$1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $var$8
     (tee_local $var$7
      (i32.add
       (tee_local $var$2
        (i32.add
         (get_local $var$2)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $var$1)
     (i32.load8_u
      (get_local $var$2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $var$21)
    (i32.const 2)
   )
   (block
    (i32.store8
     (get_local $var$5)
     (i32.load8_u
      (get_local $var$7)
     )
    )
    (set_local $var$6
     (i32.add
      (tee_local $var$1
       (i32.add
        (get_local $var$5)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $var$8
     (i32.add
      (tee_local $var$2
       (i32.add
        (get_local $var$7)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $var$1)
     (i32.load8_u
      (get_local $var$2)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $var$22)
    (i32.const 1)
   )
   (i32.store8
    (get_local $var$6)
    (i32.load8_u
     (get_local $var$8)
    )
   )
  )
  (get_local $var$0)
 )
 (func $1 (; 1 ;) (type $1)
  (i64.store
   (i32.const 8)
   (i64.const 1229782938247303441)
  )
  (i64.store
   (i32.const 16)
   (i64.const 2459565876494606882)
  )
  (i64.store
   (i32.const 24)
   (i64.const 3689348814741910323)
  )
  (i64.store
   (i32.const 32)
   (i64.const 4919131752989213764)
  )
  (set_global $global$0
   (call $0
    (i32.const 9)
    (i32.const 24)
    (i32.const 4)
   )
  )
  (if
   (i32.ne
    (get_global $global$0)
    (i32.const 9)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 1229783084848853777)
   )
   (unreachable)
  )
  (set_global $global$0
   (call $0
    (i32.const 8)
    (i32.const 8)
    (i32.const 32)
   )
  )
  (if
   (i32.ne
    (get_global $global$0)
    (i32.const 8)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 1229783084848853777)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 16)
    )
    (i64.const 2459565876494606882)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 24)
    )
    (i64.const 3689348814741910323)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 32)
    )
    (i64.const 4919131752989213764)
   )
   (unreachable)
  )
  (set_global $global$0
   (call $0
    (i32.const 13)
    (i32.const 36)
    (i32.const 3)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 4919131679688438545)
   )
   (unreachable)
  )
  (set_global $global$0
   (call $0
    (i32.const 16)
    (i32.const 24)
    (i32.const 15)
   )
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 8)
    )
    (i64.const 4919131679688438545)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 16)
    )
    (i64.const 3689348814741910323)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 24)
    )
    (i64.const 3694152654344438852)
   )
   (unreachable)
  )
  (if
   (i64.ne
    (i64.load
     (i32.const 32)
    )
    (i64.const 4919131752989213764)
   )
   (unreachable)
  )
 )
)

