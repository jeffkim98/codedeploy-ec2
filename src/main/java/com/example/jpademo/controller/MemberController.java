package com.example.jpademo.controller;

import com.example.jpademo.entity.Member;
import com.example.jpademo.persistence.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/members")
@RequiredArgsConstructor
public class MemberController {
    private final MemberRepository memberRepository;

    @GetMapping
    public List<Member> all() {
        return memberRepository.findAll();
    }

    @PostMapping
    public Member save(@RequestBody Member member) {
        return memberRepository.save(member);
    }
}
